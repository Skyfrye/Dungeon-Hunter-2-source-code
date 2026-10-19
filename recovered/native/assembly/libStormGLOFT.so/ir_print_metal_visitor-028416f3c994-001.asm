; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0008a5b4, declared_size=60, range_size=60, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor6indentEv
; demangled: ir_print_metal_visitor::indent()
; decoder-mode: thumb
0008a5b4  f0 b5                                            push {r4, r5, r6, r7, lr}
0008a5b6  03 af                                            add r7, sp, #0xc
0008a5b8  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0008a5bc  04 46                                            mov r4, r0
0008a5be  94 f8 2b 00                                      ldrb.w r0, [r4, #0x2b]
0008a5c2  80 b9                                            cbnz r0, #0x8a5e6
0008a5c4  a0 68                                            ldr r0, [r4, #8]
0008a5c6  00 21                                            movs r1, #0
0008a5c8  84 f8 2b 10                                      strb.w r1, [r4, #0x2b]
0008a5cc  01 28                                            cmp r0, #1
0008a5ce  0a db                                            blt #0x8a5e6
0008a5d0  06 4d                                            ldr r5, [pc, #0x18]
0008a5d2  00 26                                            movs r6, #0
0008a5d4  7d 44                                            add r5, pc
0008a5d6  20 69                                            ldr r0, [r4, #0x10]
0008a5d8  29 46                                            mov r1, r5
0008a5da  a9 f7 24 ef                                      blx #0x34424
0008a5de  a0 68                                            ldr r0, [r4, #8]
0008a5e0  01 36                                            adds r6, #1
0008a5e2  86 42                                            cmp r6, r0
0008a5e4  f7 db                                            blt #0x8a5d6
0008a5e6  5d f8 04 bb                                      ldr fp, [sp], #4
0008a5ea  f0 bd                                            pop {r4, r5, r6, r7, pc}
0008a5ec  aa 68                                            ldr r2, [r5, #8]
0008a5ee  03 00                                            movs r3, r0

; FUNCTION 0x0008a5f0, declared_size=44, range_size=44, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor18end_statement_lineEv
; demangled: ir_print_metal_visitor::end_statement_line()
; decoder-mode: thumb
0008a5f0  d0 b5                                            push {r4, r6, r7, lr}
0008a5f2  02 af                                            add r7, sp, #8
0008a5f4  04 46                                            mov r4, r0
0008a5f6  94 f8 2a 00                                      ldrb.w r0, [r4, #0x2a]
0008a5fa  08 b1                                            cbz r0, #0x8a600
0008a5fc  01 20                                            movs r0, #1
0008a5fe  05 e0                                            b #0x8a60c
0008a600  20 69                                            ldr r0, [r4, #0x10]
0008a602  05 a1                                            adr r1, #0x14
0008a604  a9 f7 0e ef                                      blx #0x34424
0008a608  94 f8 2a 00                                      ldrb.w r0, [r4, #0x2a]
0008a60c  00 21                                            movs r1, #0
0008a60e  84 f8 2a 10                                      strb.w r1, [r4, #0x2a]
0008a612  84 f8 2b 00                                      strb.w r0, [r4, #0x2b]
0008a616  d0 bd                                            pop {r4, r6, r7, pc}
0008a618  3b 0a                                            lsrs r3, r7, #8
0008a61a  00 00                                            movs r0, r0

; FUNCTION 0x0008a61c, declared_size=44, range_size=44, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor14newline_indentEv
; demangled: ir_print_metal_visitor::newline_indent()
; decoder-mode: thumb
0008a61c  d0 b5                                            push {r4, r6, r7, lr}
0008a61e  02 af                                            add r7, sp, #8
0008a620  04 46                                            mov r4, r0
0008a622  20 7b                                            ldrb r0, [r4, #0xc]
0008a624  80 07                                            lsls r0, r0, #0x1e
0008a626  18 bf                                            it ne
0008a628  d0 bd                                            popne {r4, r6, r7, pc}
0008a62a  a1 68                                            ldr r1, [r4, #8]
0008a62c  20 69                                            ldr r0, [r4, #0x10]
0008a62e  01 31                                            adds r1, #1
0008a630  a1 60                                            str r1, [r4, #8]
0008a632  04 a1                                            adr r1, #0x10
0008a634  a9 f7 f6 ee                                      blx #0x34424
0008a638  20 46                                            mov r0, r4
0008a63a  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0008a63e  26 f0 bb bb                                      b.w #0xb0db8
0008a642  00 bf                                            nop
0008a644  0a 00                                            movs r2, r1
0008a646  00 00                                            movs r0, r0

; FUNCTION 0x0008a648, declared_size=44, range_size=44, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor16newline_deindentEv
; demangled: ir_print_metal_visitor::newline_deindent()
; decoder-mode: thumb
0008a648  d0 b5                                            push {r4, r6, r7, lr}
0008a64a  02 af                                            add r7, sp, #8
0008a64c  04 46                                            mov r4, r0
0008a64e  20 7b                                            ldrb r0, [r4, #0xc]
0008a650  80 07                                            lsls r0, r0, #0x1e
0008a652  18 bf                                            it ne
0008a654  d0 bd                                            popne {r4, r6, r7, pc}
0008a656  a1 68                                            ldr r1, [r4, #8]
0008a658  20 69                                            ldr r0, [r4, #0x10]
0008a65a  01 39                                            subs r1, #1
0008a65c  a1 60                                            str r1, [r4, #8]
0008a65e  04 a1                                            adr r1, #0x10
0008a660  a9 f7 e0 ee                                      blx #0x34424
0008a664  20 46                                            mov r0, r4
0008a666  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0008a66a  26 f0 a5 bb                                      b.w #0xb0db8
0008a66e  00 bf                                            nop
0008a670  0a 00                                            movs r2, r1
0008a672  00 00                                            movs r0, r0

; FUNCTION 0x0008a674, declared_size=136, range_size=136, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor14print_var_nameEP11ir_variable
; demangled: ir_print_metal_visitor::print_var_name(ir_variable*)
; decoder-mode: thumb
0008a674  f0 b5                                            push {r4, r5, r6, r7, lr}
0008a676  03 af                                            add r7, sp, #0xc
0008a678  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0008a67c  06 46                                            mov r6, r0
0008a67e  0c 46                                            mov r4, r1
0008a680  70 69                                            ldr r0, [r6, #0x14]
0008a682  40 68                                            ldr r0, [r0, #4]
0008a684  a8 f7 34 e8                                      blx #0x326f0
0008a688  05 46                                            mov r5, r0
0008a68a  75 b9                                            cbnz r5, #0x8a6aa
0008a68c  a0 69                                            ldr r0, [r4, #0x18]
0008a68e  00 f4 f0 50                                      and r0, r0, #0x1e00
0008a692  90 f4 a0 5f                                      teq.w r0, #0x1400
0008a696  08 d1                                            bne #0x8a6aa
0008a698  71 69                                            ldr r1, [r6, #0x14]
0008a69a  d1 e9 00 20                                      ldrd r2, r0, [r1]
0008a69e  55 1c                                            adds r5, r2, #1
0008a6a0  0d 60                                            str r5, [r1]
0008a6a2  22 46                                            mov r2, r4
0008a6a4  29 46                                            mov r1, r5
0008a6a6  a8 f7 5a e8                                      blx #0x3275c
0008a6aa  4d b1                                            cbz r5, #0x8a6c0
0008a6ac  a1 69                                            ldr r1, [r4, #0x18]
0008a6ae  30 69                                            ldr r0, [r6, #0x10]
0008a6b0  01 f4 f0 51                                      and r1, r1, #0x1e00
0008a6b4  91 f4 a0 5f                                      teq.w r1, #0x1400
0008a6b8  0b d1                                            bne #0x8a6d2
0008a6ba  0c a1                                            adr r1, #0x30
0008a6bc  2a 46                                            mov r2, r5
0008a6be  02 e0                                            b #0x8a6c6
0008a6c0  62 69                                            ldr r2, [r4, #0x14]
0008a6c2  0d a1                                            adr r1, #0x34
0008a6c4  30 69                                            ldr r0, [r6, #0x10]
0008a6c6  5d f8 04 bb                                      ldr fp, [sp], #4
0008a6ca  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008a6ce  26 f0 5b bb                                      b.w #0xb0d88
0008a6d2  04 a1                                            adr r1, #0x10
0008a6d4  62 69                                            ldr r2, [r4, #0x14]
0008a6d6  2b 46                                            mov r3, r5
0008a6d8  5d f8 04 bb                                      ldr fp, [sp], #4
0008a6dc  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008a6e0  26 f0 52 bb                                      b.w #0xb0d88
0008a6e4  25 73                                            strb r5, [r4, #0xc]
0008a6e6  5f 25                                            movs r5, #0x5f
0008a6e8  64 00                                            lsls r4, r4, #1
0008a6ea  00 00                                            movs r0, r0
0008a6ec  74 6d                                            ldr r4, [r6, #0x54]
0008a6ee  70 76                                            strb r0, [r6, #0x19]
0008a6f0  61 72                                            strb r1, [r4, #9]
0008a6f2  5f 25                                            movs r5, #0x5f
0008a6f4  64 00                                            lsls r4, r4, #1
0008a6f6  00 00                                            movs r0, r0
0008a6f8  25 73                                            strb r5, [r4, #0xc]
0008a6fa  00 00                                            movs r0, r0

; FUNCTION 0x0008a6fc, declared_size=1268, range_size=1268, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor5visitEP11ir_variable
; demangled: ir_print_metal_visitor::visit(ir_variable*)
; decoder-mode: thumb
0008a6fc  f0 b5                                            push {r4, r5, r6, r7, lr}
0008a6fe  03 af                                            add r7, sp, #0xc
0008a700  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
0008a704  83 b0                                            sub sp, #0xc
0008a706  88 46                                            mov r8, r1
0008a708  df f8 f0 23                                      ldr.w r2, [pc, #0x3f0]
0008a70c  c1 46                                            mov sb, r8
0008a70e  83 46                                            mov fp, r0
0008a710  59 f8 18 1f                                      ldr r1, [sb, #0x18]!
0008a714  7a 44                                            add r2, pc
0008a716  0f f2 e8 36                                      addw r6, pc, #0x3e8
0008a71a  db f8 1c 00                                      ldr.w r0, [fp, #0x1c]
0008a71e  11 f0 08 0f                                      tst.w r1, #8
0008a722  08 bf                                            it eq
0008a724  16 46                                            moveq r6, r2
0008a726  0f f2 e4 35                                      addw r5, pc, #0x3e4
0008a72a  11 f0 02 0f                                      tst.w r1, #2
0008a72e  08 bf                                            it eq
0008a730  15 46                                            moveq r5, r2
0008a732  b0 b9                                            cbnz r0, #0x8a762
0008a734  01 f4 f0 51                                      and r1, r1, #0x1e00
0008a738  91 f4 00 7f                                      teq.w r1, #0x200
0008a73c  11 d0                                            beq #0x8a762
0008a73e  db f8 14 00                                      ldr.w r0, [fp, #0x14]
0008a742  41 46                                            mov r1, r8
0008a744  40 68                                            ldr r0, [r0, #4]
0008a746  a7 f7 d4 ef                                      blx #0x326f0
0008a74a  40 b9                                            cbnz r0, #0x8a75e
0008a74c  db f8 14 20                                      ldr.w r2, [fp, #0x14]
0008a750  d2 e9 00 10                                      ldrd r1, r0, [r2]
0008a754  01 31                                            adds r1, #1
0008a756  11 60                                            str r1, [r2]
0008a758  42 46                                            mov r2, r8
0008a75a  a8 f7 00 e8                                      blx #0x3275c
0008a75e  db f8 1c 00                                      ldr.w r0, [fp, #0x1c]
0008a762  10 b3                                            cbz r0, #0x8a7aa
0008a764  d9 f8 00 00                                      ldr.w r0, [sb]
0008a768  c0 f3 43 20                                      ubfx r0, r0, #9, #4
0008a76c  0a 28                                            cmp r0, #0xa
0008a76e  18 bf                                            it ne
0008a770  00 28                                            cmpne r0, #0
0008a772  1a d1                                            bne #0x8a7aa
0008a774  db f8 14 60                                      ldr.w r6, [fp, #0x14]
0008a778  0c 21                                            movs r1, #0xc
0008a77a  b0 6a                                            ldr r0, [r6, #0x28]
0008a77c  a7 f7 d0 ef                                      blx #0x32720
0008a780  05 46                                            mov r5, r0
0008a782  df f8 94 03                                      ldr.w r0, [pc, #0x394]
0008a786  78 44                                            add r0, pc
0008a788  01 68                                            ldr r1, [r0]
0008a78a  28 46                                            mov r0, r5
0008a78c  a8 f7 b8 e8                                      blx #0x32900
0008a790  06 f1 0c 00                                      add.w r0, r6, #0xc
0008a794  28 60                                            str r0, [r5]
0008a796  c5 f8 08 80                                      str.w r8, [r5, #8]
0008a79a  30 69                                            ldr r0, [r6, #0x10]
0008a79c  68 60                                            str r0, [r5, #4]
0008a79e  05 60                                            str r5, [r0]
0008a7a0  35 61                                            str r5, [r6, #0x10]
0008a7a2  01 20                                            movs r0, #1
0008a7a4  8b f8 2a 00                                      strb.w r0, [fp, #0x2a]
0008a7a8  8e e1                                            b #0x8aac8
0008a7aa  9b f8 28 00                                      ldrb.w r0, [fp, #0x28]
0008a7ae  00 28                                            cmp r0, #0
0008a7b0  6e d0                                            beq #0x8a890
0008a7b2  d9 f8 00 20                                      ldr.w r2, [sb]
0008a7b6  da 4b                                            ldr r3, [pc, #0x368]
0008a7b8  d8 49                                            ldr r1, [pc, #0x360]
0008a7ba  db f8 10 00                                      ldr.w r0, [fp, #0x10]
0008a7be  c2 f3 41 34                                      ubfx r4, r2, #0xd, #2
0008a7c2  7b 44                                            add r3, pc
0008a7c4  c2 f3 43 22                                      ubfx r2, r2, #9, #4
0008a7c8  79 44                                            add r1, pc
0008a7ca  53 f8 22 20                                      ldr.w r2, [r3, r2, lsl #2]
0008a7ce  33 46                                            mov r3, r6
0008a7d0  51 f8 24 10                                      ldr.w r1, [r1, r4, lsl #2]
0008a7d4  cd e9 00 12                                      strd r1, r2, [sp]
0008a7d8  d2 a1                                            adr r1, #0x348
0008a7da  2a 46                                            mov r2, r5
0008a7dc  a9 f7 22 ee                                      blx #0x34424
0008a7e0  40 46                                            mov r0, r8
0008a7e2  d8 f8 10 50                                      ldr.w r5, [r8, #0x10]
0008a7e6  db f8 10 60                                      ldr.w r6, [fp, #0x10]
0008a7ea  a8 f7 5e ea                                      blx #0x32ca8
0008a7ee  02 46                                            mov r2, r0
0008a7f0  02 2a                                            cmp r2, #2
0008a7f2  08 bf                                            it eq
0008a7f4  01 22                                            moveq r2, #1
0008a7f6  30 46                                            mov r0, r6
0008a7f8  29 46                                            mov r1, r5
0008a7fa  00 23                                            movs r3, #0
0008a7fc  00 f0 56 ff                                      bl #0x8b6ac
0008a800  db f8 10 00                                      ldr.w r0, [fp, #0x10]
0008a804  ca a1                                            adr r1, #0x328
0008a806  a9 f7 0e ee                                      blx #0x34424
0008a80a  58 46                                            mov r0, fp
0008a80c  41 46                                            mov r1, r8
0008a80e  a9 f7 0c ef                                      blx #0x34628
0008a812  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
0008a816  41 68                                            ldr r1, [r0, #4]
0008a818  09 29                                            cmp r1, #9
0008a81a  06 d1                                            bne #0x8a82a
0008a81c  c5 49                                            ldr r1, [pc, #0x314]
0008a81e  02 69                                            ldr r2, [r0, #0x10]
0008a820  db f8 10 00                                      ldr.w r0, [fp, #0x10]
0008a824  79 44                                            add r1, pc
0008a826  a9 f7 fe ed                                      blx #0x34424
0008a82a  d8 f8 14 50                                      ldr.w r5, [r8, #0x14]
0008a82e  c2 a1                                            adr r1, #0x308
0008a830  28 46                                            mov r0, r5
0008a832  a7 f7 86 eb                                      blx #0x31f40
0008a836  00 28                                            cmp r0, #0
0008a838  49 d0                                            beq #0x8a8ce
0008a83a  c3 a1                                            adr r1, #0x30c
0008a83c  28 46                                            mov r0, r5
0008a83e  a7 f7 80 eb                                      blx #0x31f40
0008a842  00 28                                            cmp r0, #0
0008a844  46 d0                                            beq #0x8a8d4
0008a846  c4 a1                                            adr r1, #0x310
0008a848  28 46                                            mov r0, r5
0008a84a  a7 f7 7a eb                                      blx #0x31f40
0008a84e  00 28                                            cmp r0, #0
0008a850  43 d0                                            beq #0x8a8da
0008a852  c5 a1                                            adr r1, #0x314
0008a854  28 46                                            mov r0, r5
0008a856  a7 f7 74 eb                                      blx #0x31f40
0008a85a  00 28                                            cmp r0, #0
0008a85c  40 d0                                            beq #0x8a8e0
0008a85e  c6 a1                                            adr r1, #0x318
0008a860  28 46                                            mov r0, r5
0008a862  a7 f7 6e eb                                      blx #0x31f40
0008a866  f0 b3                                            cbz r0, #0x8a8e6
0008a868  c7 a1                                            adr r1, #0x31c
0008a86a  28 46                                            mov r0, r5
0008a86c  a7 f7 68 eb                                      blx #0x31f40
0008a870  e0 b3                                            cbz r0, #0x8a8ec
0008a872  c8 a1                                            adr r1, #0x320
0008a874  28 46                                            mov r0, r5
0008a876  a7 f7 64 eb                                      blx #0x31f40
0008a87a  00 28                                            cmp r0, #0
0008a87c  00 f0 39 81                                      beq.w #0x8aaf2
0008a880  c7 a1                                            adr r1, #0x31c
0008a882  28 46                                            mov r0, r5
0008a884  a7 f7 5c eb                                      blx #0x31f40
0008a888  b0 bb                                            cbnz r0, #0x8a8f8
0008a88a  c9 49                                            ldr r1, [pc, #0x324]
0008a88c  79 44                                            add r1, pc
0008a88e  2f e0                                            b #0x8a8f0
0008a890  db f8 24 00                                      ldr.w r0, [fp, #0x24]
0008a894  41 46                                            mov r1, r8
0008a896  a9 f7 ea ed                                      blx #0x3446c
0008a89a  00 28                                            cmp r0, #0
0008a89c  3f f4 89 af                                      beq.w #0x8a7b2
0008a8a0  c1 6a                                            ldr r1, [r0, #0x2c]
0008a8a2  01 29                                            cmp r1, #1
0008a8a4  7f f4 85 af                                      bne.w #0x8a7b2
0008a8a8  01 6a                                            ldr r1, [r0, #0x20]
0008a8aa  00 f1 24 02                                      add.w r2, r0, #0x24
0008a8ae  91 42                                            cmp r1, r2
0008a8b0  1e bf                                            ittt ne
0008a8b2  01 6b                                            ldrne r1, [r0, #0x30]
0008a8b4  34 30                                            addne r0, #0x34
0008a8b6  81 42                                            cmpne r1, r0
0008a8b8  3f f4 7b af                                      beq.w #0x8a7b2
0008a8bc  02 20                                            movs r0, #2
0008a8be  09 68                                            ldr r1, [r1]
0008a8c0  01 38                                            subs r0, #1
0008a8c2  00 29                                            cmp r1, #0
0008a8c4  fb d1                                            bne #0x8a8be
0008a8c6  00 28                                            cmp r0, #0
0008a8c8  7f f4 73 af                                      bne.w #0x8a7b2
0008a8cc  69 e7                                            b #0x8a7a2
0008a8ce  c2 49                                            ldr r1, [pc, #0x308]
0008a8d0  79 44                                            add r1, pc
0008a8d2  0d e0                                            b #0x8a8f0
0008a8d4  bf 49                                            ldr r1, [pc, #0x2fc]
0008a8d6  79 44                                            add r1, pc
0008a8d8  0a e0                                            b #0x8a8f0
0008a8da  bd 49                                            ldr r1, [pc, #0x2f4]
0008a8dc  79 44                                            add r1, pc
0008a8de  07 e0                                            b #0x8a8f0
0008a8e0  ba 49                                            ldr r1, [pc, #0x2e8]
0008a8e2  79 44                                            add r1, pc
0008a8e4  04 e0                                            b #0x8a8f0
0008a8e6  b8 49                                            ldr r1, [pc, #0x2e0]
0008a8e8  79 44                                            add r1, pc
0008a8ea  01 e0                                            b #0x8a8f0
0008a8ec  b5 49                                            ldr r1, [pc, #0x2d4]
0008a8ee  79 44                                            add r1, pc
0008a8f0  db f8 10 00                                      ldr.w r0, [fp, #0x10]
0008a8f4  a9 f7 96 ed                                      blx #0x34424
0008a8f8  db f8 20 00                                      ldr.w r0, [fp, #0x20]
0008a8fc  01 28                                            cmp r0, #1
0008a8fe  21 d1                                            bne #0x8a944
0008a900  d9 f8 00 00                                      ldr.w r0, [sb]
0008a904  00 f4 f0 50                                      and r0, r0, #0x1e00
0008a908  90 f4 80 6f                                      teq.w r0, #0x400
0008a90c  4c d1                                            bne #0x8a9a8
0008a90e  db f8 04 20                                      ldr.w r2, [fp, #4]
0008a912  b2 49                                            ldr r1, [pc, #0x2c8]
0008a914  db f8 10 00                                      ldr.w r0, [fp, #0x10]
0008a918  d2 6d                                            ldr r2, [r2, #0x5c]
0008a91a  79 44                                            add r1, pc
0008a91c  a9 f7 82 ed                                      blx #0x34424
0008a920  d9 f8 00 00                                      ldr.w r0, [sb]
0008a924  40 f4 00 20                                      orr r0, r0, #0x80000
0008a928  c9 f8 00 00                                      str.w r0, [sb]
0008a92c  db f8 04 00                                      ldr.w r0, [fp, #4]
0008a930  c0 6d                                            ldr r0, [r0, #0x5c]
0008a932  c8 f8 24 00                                      str.w r0, [r8, #0x24]
0008a936  db f8 04 00                                      ldr.w r0, [fp, #4]
0008a93a  c1 6d                                            ldr r1, [r0, #0x5c]
0008a93c  01 31                                            adds r1, #1
0008a93e  c1 65                                            str r1, [r0, #0x5c]
0008a940  db f8 20 00                                      ldr.w r0, [fp, #0x20]
0008a944  02 28                                            cmp r0, #2
0008a946  2f d1                                            bne #0x8a9a8
0008a948  d9 f8 00 00                                      ldr.w r0, [sb]
0008a94c  c0 f3 43 21                                      ubfx r1, r0, #9, #4
0008a950  03 39                                            subs r1, #3
0008a952  01 29                                            cmp r1, #1
0008a954  28 d8                                            bhi #0x8a9a8
0008a956  01 03                                            lsls r1, r0, #0xc
0008a958  14 d4                                            bmi #0x8a984
0008a95a  99 f8 04 10                                      ldrb.w r1, [sb, #4]
0008a95e  40 f4 00 20                                      orr r0, r0, #0x80000
0008a962  c9 f8 00 00                                      str.w r0, [sb]
0008a966  89 f8 04 10                                      strb.w r1, [sb, #4]
0008a96a  db f8 04 00                                      ldr.w r0, [fp, #4]
0008a96e  40 6e                                            ldr r0, [r0, #0x64]
0008a970  04 30                                            adds r0, #4
0008a972  c8 f8 24 00                                      str.w r0, [r8, #0x24]
0008a976  db f8 04 00                                      ldr.w r0, [fp, #4]
0008a97a  41 6e                                            ldr r1, [r0, #0x64]
0008a97c  01 31                                            adds r1, #1
0008a97e  41 66                                            str r1, [r0, #0x64]
0008a980  d9 f8 00 00                                      ldr.w r0, [sb]
0008a984  00 03                                            lsls r0, r0, #0xc
0008a986  0f d5                                            bpl #0x8a9a8
0008a988  d8 f8 24 00                                      ldr.w r0, [r8, #0x24]
0008a98c  04 28                                            cmp r0, #4
0008a98e  0b db                                            blt #0x8a9a8
0008a990  d8 f8 10 10                                      ldr.w r1, [r8, #0x10]
0008a994  49 68                                            ldr r1, [r1, #4]
0008a996  09 29                                            cmp r1, #9
0008a998  06 d0                                            beq #0x8a9a8
0008a99a  91 49                                            ldr r1, [pc, #0x244]
0008a99c  02 1f                                            subs r2, r0, #4
0008a99e  db f8 10 00                                      ldr.w r0, [fp, #0x10]
0008a9a2  79 44                                            add r1, pc
0008a9a4  a9 f7 3e ed                                      blx #0x34424
0008a9a8  d9 f8 00 00                                      ldr.w r0, [sb]
0008a9ac  99 f8 04 a0                                      ldrb.w sl, [sb, #4]
0008a9b0  00 f4 f0 51                                      and r1, r0, #0x1e00
0008a9b4  91 f4 00 7f                                      teq.w r1, #0x200
0008a9b8  2a d1                                            bne #0x8aa10
0008a9ba  db f8 04 20                                      ldr.w r2, [fp, #4]
0008a9be  92 f8 54 10                                      ldrb.w r1, [r2, #0x54]
0008a9c2  29 b3                                            cbz r1, #0x8aa10
0008a9c4  87 49                                            ldr r1, [pc, #0x21c]
0008a9c6  92 6d                                            ldr r2, [r2, #0x58]
0008a9c8  db f8 10 00                                      ldr.w r0, [fp, #0x10]
0008a9cc  79 44                                            add r1, pc
0008a9ce  a9 f7 2a ed                                      blx #0x34424
0008a9d2  db f8 04 30                                      ldr.w r3, [fp, #4]
0008a9d6  84 49                                            ldr r1, [pc, #0x210]
0008a9d8  db f8 10 00                                      ldr.w r0, [fp, #0x10]
0008a9dc  d8 f8 14 20                                      ldr.w r2, [r8, #0x14]
0008a9e0  79 44                                            add r1, pc
0008a9e2  9b 6d                                            ldr r3, [r3, #0x58]
0008a9e4  a9 f7 1e ed                                      blx #0x34424
0008a9e8  d9 f8 00 00                                      ldr.w r0, [sb]
0008a9ec  40 f4 00 20                                      orr r0, r0, #0x80000
0008a9f0  c9 f8 00 00                                      str.w r0, [sb]
0008a9f4  db f8 04 00                                      ldr.w r0, [fp, #4]
0008a9f8  80 6d                                            ldr r0, [r0, #0x58]
0008a9fa  c8 f8 24 00                                      str.w r0, [r8, #0x24]
0008a9fe  db f8 04 00                                      ldr.w r0, [fp, #4]
0008aa02  81 6d                                            ldr r1, [r0, #0x58]
0008aa04  01 31                                            adds r1, #1
0008aa06  81 65                                            str r1, [r0, #0x58]
0008aa08  99 f8 04 a0                                      ldrb.w sl, [sb, #4]
0008aa0c  d9 f8 00 00                                      ldr.w r0, [sb]
0008aa10  00 f4 f0 51                                      and r1, r0, #0x1e00
0008aa14  91 f4 00 7f                                      teq.w r1, #0x200
0008aa18  4c d1                                            bne #0x8aab4
0008aa1a  db f8 04 20                                      ldr.w r2, [fp, #4]
0008aa1e  92 f8 54 10                                      ldrb.w r1, [r2, #0x54]
0008aa22  00 29                                            cmp r1, #0
0008aa24  46 d1                                            bne #0x8aab4
0008aa26  d8 f8 10 50                                      ldr.w r5, [r8, #0x10]
0008aa2a  c0 f3 c1 31                                      ubfx r1, r0, #0xf, #2
0008aa2e  03 29                                            cmp r1, #3
0008aa30  4f f0 00 06                                      mov.w r6, #0
0008aa34  a1 f1 01 01                                      sub.w r1, r1, #1
0008aa38  18 bf                                            it ne
0008aa3a  01 26                                            movne r6, #1
0008aa3c  02 29                                            cmp r1, #2
0008aa3e  4f f0 00 01                                      mov.w r1, #0
0008aa42  38 bf                                            it lo
0008aa44  01 21                                            movlo r1, #1
0008aa46  00 23                                            movs r3, #0
0008aa48  06 ea 01 0e                                      and.w lr, r6, r1
0008aa4c  69 68                                            ldr r1, [r5, #4]
0008aa4e  04 24                                            movs r4, #4
0008aa50  01 26                                            movs r6, #1
0008aa52  09 29                                            cmp r1, #9
0008aa54  06 bf                                            itte eq
0008aa56  d5 e9 04 c5                                      ldrdeq ip, r5, [r5, #0x10]
0008aa5a  69 68                                            ldreq r1, [r5, #4]
0008aa5c  4f f0 01 0c                                      movne.w ip, #1
0008aa60  be f1 00 0f                                      cmp.w lr, #0
0008aa64  18 bf                                            it ne
0008aa66  02 24                                            movne r4, #2
0008aa68  40 f4 00 20                                      orr r0, r0, #0x80000
0008aa6c  03 29                                            cmp r1, #3
0008aa6e  08 bf                                            it eq
0008aa70  01 23                                            moveq r3, #1
0008aa72  11 6e                                            ldr r1, [r2, #0x60]
0008aa74  2a 89                                            ldrh r2, [r5, #8]
0008aa76  3c bf                                            itt lo
0008aa78  23 46                                            movlo r3, r4
0008aa7a  26 46                                            movlo r6, r4
0008aa7c  03 fb 0c f3                                      mul r3, r3, ip
0008aa80  c2 f3 42 25                                      ubfx r5, r2, #9, #3
0008aa84  03 2d                                            cmp r5, #3
0008aa86  08 bf                                            it eq
0008aa88  04 25                                            moveq r5, #4
0008aa8a  c2 f3 02 32                                      ubfx r2, r2, #0xc, #3
0008aa8e  15 fb 06 11                                      smlabb r1, r5, r6, r1
0008aa92  15 fb 06 f6                                      smulbb r6, r5, r6
0008aa96  89 f8 04 a0                                      strb.w sl, [sb, #4]
0008aa9a  c9 f8 00 00                                      str.w r0, [sb]
0008aa9e  5a 43                                            muls r2, r3, r2
0008aaa0  01 39                                            subs r1, #1
0008aaa2  70 42                                            rsbs r0, r6, #0
0008aaa4  08 40                                            ands r0, r1
0008aaa6  c8 f8 24 00                                      str.w r0, [r8, #0x24]
0008aaaa  db f8 04 10                                      ldr.w r1, [fp, #4]
0008aaae  02 fb 05 00                                      mla r0, r2, r5, r0
0008aab2  08 66                                            str r0, [r1, #0x60]
0008aab4  d8 f8 34 00                                      ldr.w r0, [r8, #0x34]
0008aab8  30 b1                                            cbz r0, #0x8aac8
0008aaba  d9 f8 00 00                                      ldr.w r0, [sb]
0008aabe  c0 f3 43 20                                      ubfx r0, r0, #9, #4
0008aac2  02 38                                            subs r0, #2
0008aac4  06 28                                            cmp r0, #6
0008aac6  03 d2                                            bhs #0x8aad0
0008aac8  03 b0                                            add sp, #0xc
0008aaca  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
0008aace  f0 bd                                            pop {r4, r5, r6, r7, pc}
0008aad0  db f8 10 00                                      ldr.w r0, [fp, #0x10]
0008aad4  45 a1                                            adr r1, #0x114
0008aad6  a9 f7 a6 ec                                      blx #0x34424
0008aada  db f8 00 00                                      ldr.w r0, [fp]
0008aade  d8 f8 34 10                                      ldr.w r1, [r8, #0x34]
0008aae2  42 6b                                            ldr r2, [r0, #0x34]
0008aae4  58 46                                            mov r0, fp
0008aae6  03 b0                                            add sp, #0xc
0008aae8  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
0008aaec  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008aaf0  10 47                                            bx r2
0008aaf2  db f8 10 00                                      ldr.w r0, [fp, #0x10]
0008aaf6  2f a1                                            adr r1, #0xbc
0008aaf8  fc e6                                            b #0x8a8f4
0008aafa  00 bf                                            nop
0008aafc  ab ea                                            .byte 0xab, 0xea
0008aafe  02 00                                            movs r2, r0
0008ab00  69 6e                                            ldr r1, [r5, #0x64]
0008ab02  76 61                                            str r6, [r6, #0x14]
0008ab04  72 69                                            ldr r2, [r6, #0x14]
0008ab06  61 6e                                            ldr r1, [r4, #0x64]
0008ab08  74 20                                            movs r0, #0x74
0008ab0a  00 00                                            movs r0, r0
0008ab0c  63 65                                            str r3, [r4, #0x54]
0008ab0e  6e 74                                            strb r6, [r5, #0x11]
0008ab10  72 6f                                            ldr r2, [r6, #0x74]
0008ab12  69 64                                            str r1, [r5, #0x44]
0008ab14  20 00                                            movs r0, r4
0008ab16  00 00                                            movs r0, r0
0008ab18  b2 1d                                            adds r2, r6, #6
0008ab1a  05 00                                            movs r5, r0
0008ab1c  3c df                                            svc #0x3c
0008ab1e  04 00                                            movs r4, r0
0008ab20  16 df                                            svc #0x16
0008ab22  04 00                                            movs r4, r0
0008ab24  25 73                                            strb r5, [r4, #0xc]
0008ab26  25 73                                            strb r5, [r4, #0xc]
0008ab28  25 73                                            strb r5, [r4, #0xc]
0008ab2a  25 73                                            strb r5, [r4, #0xc]
0008ab2c  00 00                                            movs r0, r0
0008ab2e  00 00                                            movs r0, r0
0008ab30  20 00                                            movs r0, r4
0008ab32  00 00                                            movs r0, r0
0008ab34  c6 64                                            str r6, [r0, #0x4c]
0008ab36  03 00                                            movs r3, r0
0008ab38  67 6c                                            ldr r7, [r4, #0x44]
0008ab3a  5f 46                                            mov r7, fp
0008ab3c  72 61                                            str r2, [r6, #0x14]
0008ab3e  67 44                                            add r7, ip
0008ab40  65 70                                            strb r5, [r4, #1]
0008ab42  74 68                                            ldr r4, [r6, #4]
0008ab44  00 00                                            movs r0, r0
0008ab46  00 00                                            movs r0, r0
0008ab48  67 6c                                            ldr r7, [r4, #0x44]
0008ab4a  5f 46                                            mov r7, fp
0008ab4c  72 61                                            str r2, [r6, #0x14]
0008ab4e  67 43                                            muls r7, r4, r7
0008ab50  6f 6f                                            ldr r7, [r5, #0x74]
0008ab52  72 64                                            str r2, [r6, #0x44]
0008ab54  00 00                                            movs r0, r0
0008ab56  00 00                                            movs r0, r0
0008ab58  67 6c                                            ldr r7, [r4, #0x44]
0008ab5a  5f 46                                            mov r7, fp
0008ab5c  72 6f                                            ldr r2, [r6, #0x74]
0008ab5e  6e 74                                            strb r6, [r5, #0x11]
0008ab60  46 61                                            str r6, [r0, #0x14]
0008ab62  63 69                                            ldr r3, [r4, #0x14]
0008ab64  6e 67                                            str r6, [r5, #0x74]
0008ab66  00 00                                            movs r0, r0
0008ab68  67 6c                                            ldr r7, [r4, #0x44]
0008ab6a  5f 50                                            str r7, [r3, r1]
0008ab6c  6f 69                                            ldr r7, [r5, #0x14]
0008ab6e  6e 74                                            strb r6, [r5, #0x11]
0008ab70  43 6f                                            ldr r3, [r0, #0x74]
0008ab72  6f 72                                            strb r7, [r5, #9]
0008ab74  64 00                                            lsls r4, r4, #1
0008ab76  00 00                                            movs r0, r0
0008ab78  67 6c                                            ldr r7, [r4, #0x44]
0008ab7a  5f 50                                            str r7, [r3, r1]
0008ab7c  6f 69                                            ldr r7, [r5, #0x14]
0008ab7e  6e 74                                            strb r6, [r5, #0x11]
0008ab80  53 69                                            ldr r3, [r2, #0x14]
0008ab82  7a 65                                            str r2, [r7, #0x54]
0008ab84  00 00                                            movs r0, r0
0008ab86  00 00                                            movs r0, r0
0008ab88  67 6c                                            ldr r7, [r4, #0x44]
0008ab8a  5f 50                                            str r7, [r3, r1]
0008ab8c  6f 73                                            strb r7, [r5, #0xd]
0008ab8e  69 74                                            strb r1, [r5, #0x11]
0008ab90  69 6f                                            ldr r1, [r5, #0x74]
0008ab92  6e 00                                            lsls r6, r5, #1
0008ab94  67 6c                                            ldr r7, [r4, #0x44]
0008ab96  5f 56                                            ldrsb r7, [r3, r1]
0008ab98  65 72                                            strb r5, [r4, #9]
0008ab9a  74 65                                            str r4, [r6, #0x54]
0008ab9c  78 49                                            ldr r1, [pc, #0x1e0]
0008ab9e  44 00                                            lsls r4, r0, #1
0008aba0  67 6c                                            ldr r7, [r4, #0x44]
0008aba2  5f 49                                            ldr r1, [pc, #0x17c]
0008aba4  6e 73                                            strb r6, [r5, #0xd]
0008aba6  74 61                                            str r4, [r6, #0x14]
0008aba8  6e 63                                            str r6, [r5, #0x34]
0008abaa  65 49                                            ldr r1, [pc, #0x194]
0008abac  44 00                                            lsls r4, r0, #1
0008abae  00 00                                            movs r0, r0
0008abb0  46 66                                            str r6, [r0, #0x64]
0008abb2  03 00                                            movs r3, r0
0008abb4  20 5b                                            ldrh r0, [r4, r4]
0008abb6  5b 76                                            strb r3, [r3, #0x19]
0008abb8  65 72                                            strb r5, [r4, #9]
0008abba  74 65                                            str r4, [r6, #0x54]
0008abbc  78 5f                                            ldrsh r0, [r7, r5]
0008abbe  69 64                                            str r1, [r5, #0x44]
0008abc0  5d 5d                                            ldrb r5, [r3, r5]
0008abc2  00 00                                            movs r0, r0
0008abc4  a3 65                                            str r3, [r4, #0x58]
0008abc6  03 00                                            movs r3, r0
0008abc8  da 65                                            str r2, [r3, #0x5c]
0008abca  03 00                                            movs r3, r0
0008abcc  cf 65                                            str r7, [r1, #0x5c]
0008abce  03 00                                            movs r3, r0
0008abd0  c3 65                                            str r3, [r0, #0x5c]
0008abd2  03 00                                            movs r3, r0
0008abd4  bb 65                                            str r3, [r7, #0x58]
0008abd6  03 00                                            movs r3, r0
0008abd8  b1 65                                            str r1, [r6, #0x58]
0008abda  03 00                                            movs r3, r0
0008abdc  c9 65                                            str r1, [r1, #0x5c]
0008abde  03 00                                            movs r3, r0
0008abe0  54 65                                            str r4, [r2, #0x54]
0008abe2  03 00                                            movs r3, r0
0008abe4  39 65                                            str r1, [r7, #0x50]
0008abe6  03 00                                            movs r3, r0
0008abe8  36 65                                            str r6, [r6, #0x50]
0008abea  03 00                                            movs r3, r0
0008abec  20 3d                                            subs r5, #0x20
0008abee  20 00                                            movs r0, r4

; FUNCTION 0x0008abf0, declared_size=44, range_size=44, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor22can_emit_canonical_forEP19loop_variable_state
; demangled: ir_print_metal_visitor::can_emit_canonical_for(loop_variable_state*)
; decoder-mode: thumb
0008abf0  91 b1                                            cbz r1, #0x8ac18
0008abf2  0a 6a                                            ldr r2, [r1, #0x20]
0008abf4  01 f1 24 00                                      add.w r0, r1, #0x24
0008abf8  82 42                                            cmp r2, r0
0008abfa  1e bf                                            ittt ne
0008abfc  08 6b                                            ldrne r0, [r1, #0x30]
0008abfe  34 31                                            addne r1, #0x34
0008ac00  88 42                                            cmpne r0, r1
0008ac02  09 d0                                            beq #0x8ac18
0008ac04  02 21                                            movs r1, #2
0008ac06  00 68                                            ldr r0, [r0]
0008ac08  01 39                                            subs r1, #1
0008ac0a  00 28                                            cmp r0, #0
0008ac0c  fb d1                                            bne #0x8ac06
0008ac0e  00 20                                            movs r0, #0
0008ac10  00 29                                            cmp r1, #0
0008ac12  08 bf                                            it eq
0008ac14  01 20                                            moveq r0, #1
0008ac16  70 47                                            bx lr
0008ac18  00 20                                            movs r0, #0
0008ac1a  70 47                                            bx lr

; FUNCTION 0x0008ac1c, declared_size=664, range_size=664, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor5visitEP21ir_function_signature
; demangled: ir_print_metal_visitor::visit(ir_function_signature*)
; decoder-mode: thumb
0008ac1c  f0 b5                                            push {r4, r5, r6, r7, lr}
0008ac1e  03 af                                            add r7, sp, #0xc
0008ac20  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
0008ac24  81 b0                                            sub sp, #4
0008ac26  89 46                                            mov sb, r1
0008ac28  04 46                                            mov r4, r0
0008ac2a  d9 f8 38 00                                      ldr.w r0, [sb, #0x38]
0008ac2e  83 a1                                            adr r1, #0x20c
0008ac30  00 69                                            ldr r0, [r0, #0x10]
0008ac32  a7 f7 86 e9                                      blx #0x31f40
0008ac36  80 46                                            mov r8, r0
0008ac38  b8 f1 00 0f                                      cmp.w r8, #0
0008ac3c  58 d0                                            beq #0x8acf0
0008ac3e  a2 46                                            mov sl, r4
0008ac40  48 46                                            mov r0, sb
0008ac42  d9 f8 10 50                                      ldr.w r5, [sb, #0x10]
0008ac46  5a f8 10 6f                                      ldr r6, [sl, #0x10]!
0008ac4a  a8 f7 2e e8                                      blx #0x32ca8
0008ac4e  02 46                                            mov r2, r0
0008ac50  02 2a                                            cmp r2, #2
0008ac52  08 bf                                            it eq
0008ac54  01 22                                            moveq r2, #1
0008ac56  30 46                                            mov r0, r6
0008ac58  29 46                                            mov r1, r5
0008ac5a  01 23                                            movs r3, #1
0008ac5c  00 f0 26 fd                                      bl #0x8b6ac
0008ac60  d9 f8 38 10                                      ldr.w r1, [sb, #0x38]
0008ac64  da f8 00 00                                      ldr.w r0, [sl]
0008ac68  0a 69                                            ldr r2, [r1, #0x10]
0008ac6a  76 a1                                            adr r1, #0x1d8
0008ac6c  a9 f7 da eb                                      blx #0x34424
0008ac70  d9 f8 18 00                                      ldr.w r0, [sb, #0x18]
0008ac74  09 f1 1c 01                                      add.w r1, sb, #0x1c
0008ac78  88 42                                            cmp r0, r1
0008ac7a  58 d0                                            beq #0x8ad2e
0008ac7c  20 69                                            ldr r0, [r4, #0x10]
0008ac7e  73 a1                                            adr r1, #0x1cc
0008ac80  a9 f7 d0 eb                                      blx #0x34424
0008ac84  a0 68                                            ldr r0, [r4, #8]
0008ac86  00 21                                            movs r1, #0
0008ac88  84 f8 2b 10                                      strb.w r1, [r4, #0x2b]
0008ac8c  41 1c                                            adds r1, r0, #1
0008ac8e  a1 60                                            str r1, [r4, #8]
0008ac90  d9 f8 18 50                                      ldr.w r5, [sb, #0x18]
0008ac94  00 2d                                            cmp r5, #0
0008ac96  18 bf                                            it ne
0008ac98  04 3d                                            subne r5, #4
0008ac9a  2e 46                                            mov r6, r5
0008ac9c  56 f8 04 0f                                      ldr r0, [r6, #4]!
0008aca0  e0 b1                                            cbz r0, #0x8acdc
0008aca2  0f f2 ac 1b                                      addw fp, pc, #0x1ac
0008aca6  01 20                                            movs r0, #1
0008aca8  c0 07                                            lsls r0, r0, #0x1f
0008acaa  04 d1                                            bne #0x8acb6
0008acac  da f8 00 00                                      ldr.w r0, [sl]
0008acb0  59 46                                            mov r1, fp
0008acb2  a9 f7 b8 eb                                      blx #0x34424
0008acb6  20 46                                            mov r0, r4
0008acb8  a9 f7 b0 ec                                      blx #0x3461c
0008acbc  28 68                                            ldr r0, [r5]
0008acbe  21 46                                            mov r1, r4
0008acc0  82 68                                            ldr r2, [r0, #8]
0008acc2  28 46                                            mov r0, r5
0008acc4  90 47                                            blx r2
0008acc6  35 68                                            ldr r5, [r6]
0008acc8  00 20                                            movs r0, #0
0008acca  00 2d                                            cmp r5, #0
0008accc  18 bf                                            it ne
0008acce  04 3d                                            subne r5, #4
0008acd0  2e 46                                            mov r6, r5
0008acd2  56 f8 04 1f                                      ldr r1, [r6, #4]!
0008acd6  00 29                                            cmp r1, #0
0008acd8  e6 d1                                            bne #0x8aca8
0008acda  a1 68                                            ldr r1, [r4, #8]
0008acdc  20 69                                            ldr r0, [r4, #0x10]
0008acde  01 39                                            subs r1, #1
0008ace0  a1 60                                            str r1, [r4, #8]
0008ace2  5a a1                                            adr r1, #0x168
0008ace4  a9 f7 9e eb                                      blx #0x34424
0008ace8  20 46                                            mov r0, r4
0008acea  a9 f7 98 ec                                      blx #0x3461c
0008acee  1e e0                                            b #0x8ad2e
0008acf0  20 6a                                            ldr r0, [r4, #0x20]
0008acf2  02 28                                            cmp r0, #2
0008acf4  04 d1                                            bne #0x8ad00
0008acf6  20 69                                            ldr r0, [r4, #0x10]
0008acf8  56 a1                                            adr r1, #0x158
0008acfa  a9 f7 94 eb                                      blx #0x34424
0008acfe  20 6a                                            ldr r0, [r4, #0x20]
0008ad00  04 f1 10 0a                                      add.w sl, r4, #0x10
0008ad04  01 28                                            cmp r0, #1
0008ad06  04 d1                                            bne #0x8ad12
0008ad08  da f8 00 00                                      ldr.w r0, [sl]
0008ad0c  54 a1                                            adr r1, #0x150
0008ad0e  a9 f7 8a eb                                      blx #0x34424
0008ad12  55 49                                            ldr r1, [pc, #0x154]
0008ad14  20 69                                            ldr r0, [r4, #0x10]
0008ad16  79 44                                            add r1, pc
0008ad18  a9 f7 84 eb                                      blx #0x34424
0008ad1c  60 68                                            ldr r0, [r4, #4]
0008ad1e  c1 6c                                            ldr r1, [r0, #0x4c]
0008ad20  29 b1                                            cbz r1, #0x8ad2e
0008ad22  82 6c                                            ldr r2, [r0, #0x48]
0008ad24  51 a1                                            adr r1, #0x144
0008ad26  da f8 00 00                                      ldr.w r0, [sl]
0008ad2a  a9 f7 7c eb                                      blx #0x34424
0008ad2e  da f8 00 00                                      ldr.w r0, [sl]
0008ad32  09 f1 2a 02                                      add.w r2, sb, #0x2a
0008ad36  d9 f8 26 10                                      ldr.w r1, [sb, #0x26]
0008ad3a  91 42                                            cmp r1, r2
0008ad3c  75 d0                                            beq #0x8ae2a
0008ad3e  4c a1                                            adr r1, #0x130
0008ad40  a9 f7 70 eb                                      blx #0x34424
0008ad44  20 46                                            mov r0, r4
0008ad46  a9 f7 6a ec                                      blx #0x3461c
0008ad4a  da f8 00 00                                      ldr.w r0, [sl]
0008ad4e  49 a1                                            adr r1, #0x124
0008ad50  a9 f7 68 eb                                      blx #0x34424
0008ad54  a0 68                                            ldr r0, [r4, #8]
0008ad56  00 21                                            movs r1, #0
0008ad58  b8 f1 00 0f                                      cmp.w r8, #0
0008ad5c  84 f8 2b 10                                      strb.w r1, [r4, #0x2b]
0008ad60  00 f1 01 00                                      add.w r0, r0, #1
0008ad64  a0 60                                            str r0, [r4, #8]
0008ad66  1d d1                                            bne #0x8ada4
0008ad68  20 46                                            mov r0, r4
0008ad6a  a9 f7 58 ec                                      blx #0x3461c
0008ad6e  da f8 00 00                                      ldr.w r0, [sl]
0008ad72  41 a1                                            adr r1, #0x104
0008ad74  a9 f7 56 eb                                      blx #0x34424
0008ad78  60 69                                            ldr r0, [r4, #0x14]
0008ad7a  01 21                                            movs r1, #1
0008ad7c  86 68                                            ldr r6, [r0, #8]
0008ad7e  80 f8 2c 10                                      strb.w r1, [r0, #0x2c]
0008ad82  30 68                                            ldr r0, [r6]
0008ad84  70 b1                                            cbz r0, #0x8ada4
0008ad86  44 a5                                            adr r5, #0x110
0008ad88  b0 68                                            ldr r0, [r6, #8]
0008ad8a  01 68                                            ldr r1, [r0]
0008ad8c  8a 68                                            ldr r2, [r1, #8]
0008ad8e  21 46                                            mov r1, r4
0008ad90  90 47                                            blx r2
0008ad92  da f8 00 00                                      ldr.w r0, [sl]
0008ad96  29 46                                            mov r1, r5
0008ad98  a9 f7 44 eb                                      blx #0x34424
0008ad9c  36 68                                            ldr r6, [r6]
0008ad9e  30 68                                            ldr r0, [r6]
0008ada0  00 28                                            cmp r0, #0
0008ada2  f1 d1                                            bne #0x8ad88
0008ada4  d9 f8 26 60                                      ldr.w r6, [sb, #0x26]
0008ada8  00 2e                                            cmp r6, #0
0008adaa  18 bf                                            it ne
0008adac  04 3e                                            subne r6, #4
0008adae  35 46                                            mov r5, r6
0008adb0  55 f8 04 0f                                      ldr r0, [r5, #4]!
0008adb4  20 b3                                            cbz r0, #0x8ae00
0008adb6  0f f2 e0 09                                      addw sb, pc, #0xe0
0008adba  4f f0 00 0b                                      mov.w fp, #0
0008adbe  20 46                                            mov r0, r4
0008adc0  a9 f7 2c ec                                      blx #0x3461c
0008adc4  30 68                                            ldr r0, [r6]
0008adc6  21 46                                            mov r1, r4
0008adc8  82 68                                            ldr r2, [r0, #8]
0008adca  30 46                                            mov r0, r6
0008adcc  90 47                                            blx r2
0008adce  94 f8 2a 00                                      ldrb.w r0, [r4, #0x2a]
0008add2  08 b1                                            cbz r0, #0x8add8
0008add4  01 20                                            movs r0, #1
0008add6  06 e0                                            b #0x8ade6
0008add8  da f8 00 00                                      ldr.w r0, [sl]
0008addc  49 46                                            mov r1, sb
0008adde  a9 f7 22 eb                                      blx #0x34424
0008ade2  94 f8 2a 00                                      ldrb.w r0, [r4, #0x2a]
0008ade6  84 f8 2a b0                                      strb.w fp, [r4, #0x2a]
0008adea  84 f8 2b 00                                      strb.w r0, [r4, #0x2b]
0008adee  2e 68                                            ldr r6, [r5]
0008adf0  00 2e                                            cmp r6, #0
0008adf2  18 bf                                            it ne
0008adf4  04 3e                                            subne r6, #4
0008adf6  35 46                                            mov r5, r6
0008adf8  55 f8 04 0f                                      ldr r0, [r5, #4]!
0008adfc  00 28                                            cmp r0, #0
0008adfe  de d1                                            bne #0x8adbe
0008ae00  b8 f1 00 0f                                      cmp.w r8, #0
0008ae04  07 d1                                            bne #0x8ae16
0008ae06  20 46                                            mov r0, r4
0008ae08  a9 f7 08 ec                                      blx #0x3461c
0008ae0c  da f8 00 00                                      ldr.w r0, [sl]
0008ae10  22 a1                                            adr r1, #0x88
0008ae12  a9 f7 08 eb                                      blx #0x34424
0008ae16  a0 68                                            ldr r0, [r4, #8]
0008ae18  01 38                                            subs r0, #1
0008ae1a  a0 60                                            str r0, [r4, #8]
0008ae1c  20 46                                            mov r0, r4
0008ae1e  a9 f7 fe eb                                      blx #0x3461c
0008ae22  da f8 00 00                                      ldr.w r0, [sl]
0008ae26  21 a1                                            adr r1, #0x84
0008ae28  00 e0                                            b #0x8ae2c
0008ae2a  21 a1                                            adr r1, #0x84
0008ae2c  01 b0                                            add sp, #4
0008ae2e  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
0008ae32  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008ae36  25 f0 a7 bf                                      b.w #0xb0d88
0008ae3a  00 bf                                            nop
0008ae3c  6d 61                                            str r5, [r5, #0x14]
0008ae3e  69 6e                                            ldr r1, [r5, #0x64]
0008ae40  00 00                                            movs r0, r0
0008ae42  00 00                                            movs r0, r0
0008ae44  20 25                                            movs r5, #0x20
0008ae46  73 20                                            movs r0, #0x73
0008ae48  28 00                                            movs r0, r5
0008ae4a  00 00                                            movs r0, r0
0008ae4c  0a 00                                            movs r2, r1
0008ae4e  00 00                                            movs r0, r0
0008ae50  2c 0a                                            lsrs r4, r5, #8
0008ae52  00 00                                            movs r0, r0
0008ae54  66 72                                            strb r6, [r4, #9]
0008ae56  61 67                                            str r1, [r4, #0x74]
0008ae58  6d 65                                            str r5, [r5, #0x54]
0008ae5a  6e 74                                            strb r6, [r5, #0x11]
0008ae5c  20 00                                            movs r0, r4
0008ae5e  00 00                                            movs r0, r0
0008ae60  76 65                                            str r6, [r6, #0x54]
0008ae62  72 74                                            strb r2, [r6, #0x11]
0008ae64  65 78                                            ldrb r5, [r4, #1]
0008ae66  20 00                                            movs r0, r4
0008ae68  25 62                                            str r5, [r4, #0x20]
0008ae6a  03 00                                            movs r3, r0
0008ae6c  25 73                                            strb r5, [r4, #0xc]
0008ae6e  00 00                                            movs r0, r0
0008ae70  29 0a                                            lsrs r1, r5, #8
0008ae72  00 00                                            movs r0, r0
0008ae74  7b 0a                                            lsrs r3, r7, #9
0008ae76  00 00                                            movs r0, r0
0008ae78  78 6c                                            ldr r0, [r7, #0x44]
0008ae7a  61 74                                            strb r1, [r4, #0x11]
0008ae7c  4d 74                                            strb r5, [r1, #0x11]
0008ae7e  6c 53                                            strh r4, [r5, r5]
0008ae80  68 61                                            str r0, [r5, #0x14]
0008ae82  64 65                                            str r4, [r4, #0x54]
0008ae84  72 4f                                            ldr r7, [pc, #0x1c8]
0008ae86  75 74                                            strb r5, [r6, #0x11]
0008ae88  70 75                                            strb r0, [r6, #0x15]
0008ae8a  74 20                                            movs r0, #0x74
0008ae8c  5f 6d                                            ldr r7, [r3, #0x54]
0008ae8e  74 6c                                            ldr r4, [r6, #0x44]
0008ae90  5f 6f                                            ldr r7, [r3, #0x74]
0008ae92  3b 0a                                            lsrs r3, r7, #8
0008ae94  00 00                                            movs r0, r0
0008ae96  00 00                                            movs r0, r0
0008ae98  3b 0a                                            lsrs r3, r7, #8
0008ae9a  00 00                                            movs r0, r0
0008ae9c  72 65                                            str r2, [r6, #0x54]
0008ae9e  74 75                                            strb r4, [r6, #0x15]
0008aea0  72 6e                                            ldr r2, [r6, #0x64]
0008aea2  20 5f                                            ldrsh r0, [r4, r4]
0008aea4  6d 74                                            strb r5, [r5, #0x11]
0008aea6  6c 5f                                            ldrsh r4, [r5, r5]
0008aea8  6f 3b                                            subs r3, #0x6f
0008aeaa  0a 00                                            movs r2, r1
0008aeac  7d 0a                                            lsrs r5, r7, #9
0008aeae  00 00                                            movs r0, r0
0008aeb0  29 3b                                            subs r3, #0x29
0008aeb2  0a 00                                            movs r2, r1

; FUNCTION 0x0008aeb4, declared_size=168, range_size=168, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor5visitEP11ir_function
; demangled: ir_print_metal_visitor::visit(ir_function*)
; decoder-mode: thumb
0008aeb4  f0 b5                                            push {r4, r5, r6, r7, lr}
0008aeb6  03 af                                            add r7, sp, #0xc
0008aeb8  2d e9 00 0b                                      push.w {r8, sb, fp}
0008aebc  89 46                                            mov sb, r1
0008aebe  04 46                                            mov r4, r0
0008aec0  d9 f8 14 00                                      ldr.w r0, [sb, #0x14]
0008aec4  00 28                                            cmp r0, #0
0008aec6  18 bf                                            it ne
0008aec8  04 38                                            subne r0, #4
0008aeca  06 46                                            mov r6, r0
0008aecc  56 f8 04 1f                                      ldr r1, [r6, #4]!
0008aed0  f1 b3                                            cbz r1, #0x8af50
0008aed2  00 25                                            movs r5, #0
0008aed4  a7 f7 6a ee                                      blx #0x32bac
0008aed8  01 46                                            mov r1, r0
0008aeda  30 68                                            ldr r0, [r6]
0008aedc  81 f0 01 01                                      eor r1, r1, #1
0008aee0  00 28                                            cmp r0, #0
0008aee2  18 bf                                            it ne
0008aee4  04 38                                            subne r0, #4
0008aee6  06 46                                            mov r6, r0
0008aee8  0d 43                                            orrs r5, r1
0008aeea  56 f8 04 2f                                      ldr r2, [r6, #4]!
0008aeee  00 2a                                            cmp r2, #0
0008aef0  f0 d1                                            bne #0x8aed4
0008aef2  e8 07                                            lsls r0, r5, #0x1f
0008aef4  2c d0                                            beq #0x8af50
0008aef6  00 20                                            movs r0, #0
0008aef8  d4 f8 1c 80                                      ldr.w r8, [r4, #0x1c]
0008aefc  e0 61                                            str r0, [r4, #0x1c]
0008aefe  d9 f8 14 60                                      ldr.w r6, [sb, #0x14]
0008af02  00 2e                                            cmp r6, #0
0008af04  18 bf                                            it ne
0008af06  04 3e                                            subne r6, #4
0008af08  35 46                                            mov r5, r6
0008af0a  55 f8 04 0f                                      ldr r0, [r5, #4]!
0008af0e  b0 b1                                            cbz r0, #0x8af3e
0008af10  0f f2 44 09                                      addw sb, pc, #0x44
0008af14  20 46                                            mov r0, r4
0008af16  a9 f7 82 eb                                      blx #0x3461c
0008af1a  30 68                                            ldr r0, [r6]
0008af1c  21 46                                            mov r1, r4
0008af1e  82 68                                            ldr r2, [r0, #8]
0008af20  30 46                                            mov r0, r6
0008af22  90 47                                            blx r2
0008af24  20 69                                            ldr r0, [r4, #0x10]
0008af26  49 46                                            mov r1, sb
0008af28  a9 f7 7c ea                                      blx #0x34424
0008af2c  2e 68                                            ldr r6, [r5]
0008af2e  00 2e                                            cmp r6, #0
0008af30  18 bf                                            it ne
0008af32  04 3e                                            subne r6, #4
0008af34  35 46                                            mov r5, r6
0008af36  55 f8 04 0f                                      ldr r0, [r5, #4]!
0008af3a  00 28                                            cmp r0, #0
0008af3c  ea d1                                            bne #0x8af14
0008af3e  c4 f8 1c 80                                      str.w r8, [r4, #0x1c]
0008af42  20 46                                            mov r0, r4
0008af44  bd e8 00 0b                                      pop.w {r8, sb, fp}
0008af48  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008af4c  25 f0 34 bf                                      b.w #0xb0db8
0008af50  bd e8 00 0b                                      pop.w {r8, sb, fp}
0008af54  f0 bd                                            pop {r4, r5, r6, r7, pc}
0008af56  00 bf                                            nop
0008af58  0a 00                                            movs r2, r1
0008af5a  00 00                                            movs r0, r0

; FUNCTION 0x0008af5c, declared_size=1816, range_size=1816, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor5visitEP13ir_expression
; demangled: ir_print_metal_visitor::visit(ir_expression*)
; decoder-mode: thumb
0008af5c  f0 b5                                            push {r4, r5, r6, r7, lr}
0008af5e  03 af                                            add r7, sp, #0xc
0008af60  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
0008af64  87 b0                                            sub sp, #0x1c
0008af66  04 46                                            mov r4, r0
0008af68  8a 46                                            mov sl, r1
0008af6a  e0 68                                            ldr r0, [r4, #0xc]
0008af6c  01 30                                            adds r0, #1
0008af6e  e0 60                                            str r0, [r4, #0xc]
0008af70  20 46                                            mov r0, r4
0008af72  a9 f7 60 eb                                      blx #0x34634
0008af76  da f8 1c 00                                      ldr.w r0, [sl, #0x1c]
0008af7a  03 22                                            movs r2, #3
0008af7c  18 b1                                            cbz r0, #0x8af86
0008af7e  41 69                                            ldr r1, [r0, #0x14]
0008af80  03 29                                            cmp r1, #3
0008af82  b8 bf                                            it lt
0008af84  0a 46                                            movlt r2, r1
0008af86  da f8 20 10                                      ldr.w r1, [sl, #0x20]
0008af8a  21 b1                                            cbz r1, #0x8af96
0008af8c  4b 69                                            ldr r3, [r1, #0x14]
0008af8e  9a 42                                            cmp r2, r3
0008af90  b8 bf                                            it lt
0008af92  13 46                                            movlt r3, r2
0008af94  00 e0                                            b #0x8af98
0008af96  13 46                                            mov r3, r2
0008af98  da f8 24 20                                      ldr.w r2, [sl, #0x24]
0008af9c  2a b1                                            cbz r2, #0x8afaa
0008af9e  d2 f8 14 80                                      ldr.w r8, [r2, #0x14]
0008afa2  43 45                                            cmp r3, r8
0008afa4  b8 bf                                            it lt
0008afa6  98 46                                            movlt r8, r3
0008afa8  00 e0                                            b #0x8afac
0008afaa  98 46                                            mov r8, r3
0008afac  da f8 14 e0                                      ldr.w lr, [sl, #0x14]
0008afb0  4f f0 00 09                                      mov.w sb, #0
0008afb4  90 b1                                            cbz r0, #0x8afdc
0008afb6  46 46                                            mov r6, r8
0008afb8  43 69                                            ldr r3, [r0, #0x14]
0008afba  b8 f1 03 0f                                      cmp.w r8, #3
0008afbe  08 bf                                            it eq
0008afc0  00 26                                            moveq r6, #0
0008afc2  02 2e                                            cmp r6, #2
0008afc4  08 bf                                            it eq
0008afc6  01 26                                            moveq r6, #1
0008afc8  03 2b                                            cmp r3, #3
0008afca  08 bf                                            it eq
0008afcc  00 23                                            moveq r3, #0
0008afce  02 2b                                            cmp r3, #2
0008afd0  08 bf                                            it eq
0008afd2  01 23                                            moveq r3, #1
0008afd4  9e 42                                            cmp r6, r3
0008afd6  18 bf                                            it ne
0008afd8  4f f0 01 09                                      movne.w sb, #1
0008afdc  4f f0 00 0c                                      mov.w ip, #0
0008afe0  91 b1                                            cbz r1, #0x8b008
0008afe2  46 46                                            mov r6, r8
0008afe4  4b 69                                            ldr r3, [r1, #0x14]
0008afe6  b8 f1 03 0f                                      cmp.w r8, #3
0008afea  08 bf                                            it eq
0008afec  00 26                                            moveq r6, #0
0008afee  02 2e                                            cmp r6, #2
0008aff0  08 bf                                            it eq
0008aff2  01 26                                            moveq r6, #1
0008aff4  03 2b                                            cmp r3, #3
0008aff6  08 bf                                            it eq
0008aff8  00 23                                            moveq r3, #0
0008affa  02 2b                                            cmp r3, #2
0008affc  08 bf                                            it eq
0008affe  01 23                                            moveq r3, #1
0008b000  9e 42                                            cmp r6, r3
0008b002  18 bf                                            it ne
0008b004  4f f0 01 0c                                      movne.w ip, #1
0008b008  00 25                                            movs r5, #0
0008b00a  8a b1                                            cbz r2, #0x8b030
0008b00c  43 46                                            mov r3, r8
0008b00e  52 69                                            ldr r2, [r2, #0x14]
0008b010  b8 f1 03 0f                                      cmp.w r8, #3
0008b014  08 bf                                            it eq
0008b016  00 23                                            moveq r3, #0
0008b018  02 2b                                            cmp r3, #2
0008b01a  08 bf                                            it eq
0008b01c  01 23                                            moveq r3, #1
0008b01e  03 2a                                            cmp r2, #3
0008b020  08 bf                                            it eq
0008b022  00 22                                            moveq r2, #0
0008b024  02 2a                                            cmp r2, #2
0008b026  08 bf                                            it eq
0008b028  01 22                                            moveq r2, #1
0008b02a  93 42                                            cmp r3, r2
0008b02c  18 bf                                            it ne
0008b02e  01 25                                            movne r5, #1
0008b030  50 b1                                            cbz r0, #0x8b048
0008b032  03 69                                            ldr r3, [r0, #0x10]
0008b034  00 22                                            movs r2, #0
0008b036  5e 7a                                            ldrb r6, [r3, #9]
0008b038  16 f0 60 0f                                      tst.w r6, #0x60
0008b03c  05 d0                                            beq #0x8b04a
0008b03e  5b 68                                            ldr r3, [r3, #4]
0008b040  02 2b                                            cmp r3, #2
0008b042  08 bf                                            it eq
0008b044  01 22                                            moveq r2, #1
0008b046  00 e0                                            b #0x8b04a
0008b048  00 22                                            movs r2, #0
0008b04a  00 29                                            cmp r1, #0
0008b04c  06 94                                            str r4, [sp, #0x18]
0008b04e  03 95                                            str r5, [sp, #0xc]
0008b050  0c d0                                            beq #0x8b06c
0008b052  0b 69                                            ldr r3, [r1, #0x10]
0008b054  4f f0 00 0b                                      mov.w fp, #0
0008b058  5e 7a                                            ldrb r6, [r3, #9]
0008b05a  16 f0 60 0f                                      tst.w r6, #0x60
0008b05e  07 d0                                            beq #0x8b070
0008b060  5b 68                                            ldr r3, [r3, #4]
0008b062  02 2b                                            cmp r3, #2
0008b064  08 bf                                            it eq
0008b066  4f f0 01 0b                                      moveq.w fp, #1
0008b06a  01 e0                                            b #0x8b070
0008b06c  4f f0 00 0b                                      mov.w fp, #0
0008b070  82 f0 01 06                                      eor r6, r2, #1
0008b074  89 f0 01 03                                      eor r3, sb, #1
0008b078  33 43                                            orrs r3, r6
0008b07a  53 ea 0c 03                                      orrs.w r3, r3, ip
0008b07e  1b d1                                            bne #0x8b0b8
0008b080  d0 f8 14 80                                      ldr.w r8, [r0, #0x14]
0008b084  4f f0 00 0c                                      mov.w ip, #0
0008b088  b9 b3                                            cbz r1, #0x8b0fa
0008b08a  44 46                                            mov r4, r8
0008b08c  4b 69                                            ldr r3, [r1, #0x14]
0008b08e  b8 f1 03 0f                                      cmp.w r8, #3
0008b092  08 bf                                            it eq
0008b094  00 24                                            moveq r4, #0
0008b096  02 2c                                            cmp r4, #2
0008b098  08 bf                                            it eq
0008b09a  01 24                                            moveq r4, #1
0008b09c  03 2b                                            cmp r3, #3
0008b09e  08 bf                                            it eq
0008b0a0  00 23                                            moveq r3, #0
0008b0a2  02 2b                                            cmp r3, #2
0008b0a4  08 bf                                            it eq
0008b0a6  01 23                                            moveq r3, #1
0008b0a8  4f f0 00 0c                                      mov.w ip, #0
0008b0ac  9c 42                                            cmp r4, r3
0008b0ae  18 bf                                            it ne
0008b0b0  4f f0 01 0c                                      movne.w ip, #1
0008b0b4  4f f0 00 09                                      mov.w sb, #0
0008b0b8  b9 f1 00 0f                                      cmp.w sb, #0
0008b0bc  1f d1                                            bne #0x8b0fe
0008b0be  1b ea 0c 03                                      ands.w r3, fp, ip
0008b0c2  1c d0                                            beq #0x8b0fe
0008b0c4  d1 f8 14 80                                      ldr.w r8, [r1, #0x14]
0008b0c8  4f f0 00 0c                                      mov.w ip, #0
0008b0cc  a8 b1                                            cbz r0, #0x8b0fa
0008b0ce  41 46                                            mov r1, r8
0008b0d0  40 69                                            ldr r0, [r0, #0x14]
0008b0d2  b8 f1 03 0f                                      cmp.w r8, #3
0008b0d6  08 bf                                            it eq
0008b0d8  00 21                                            moveq r1, #0
0008b0da  02 29                                            cmp r1, #2
0008b0dc  08 bf                                            it eq
0008b0de  01 21                                            moveq r1, #1
0008b0e0  03 28                                            cmp r0, #3
0008b0e2  08 bf                                            it eq
0008b0e4  00 20                                            moveq r0, #0
0008b0e6  02 28                                            cmp r0, #2
0008b0e8  08 bf                                            it eq
0008b0ea  01 20                                            moveq r0, #1
0008b0ec  4f f0 00 09                                      mov.w sb, #0
0008b0f0  81 42                                            cmp r1, r0
0008b0f2  18 bf                                            it ne
0008b0f4  4f f0 01 09                                      movne.w sb, #1
0008b0f8  01 e0                                            b #0x8b0fe
0008b0fa  4f f0 00 09                                      mov.w sb, #0
0008b0fe  da f8 18 00                                      ldr.w r0, [sl, #0x18]
0008b102  20 f0 01 00                                      bic r0, r0, #1
0008b106  3e 28                                            cmp r0, #0x3e
0008b108  30 d1                                            bne #0x8b16c
0008b10a  8b f0 01 00                                      eor r0, fp, #1
0008b10e  0b ea 06 03                                      and.w r3, fp, r6
0008b112  02 ea 00 04                                      and.w r4, r2, r0
0008b116  4b ea 06 01                                      orr.w r1, fp, r6
0008b11a  49 ea 03 09                                      orr.w sb, sb, r3
0008b11e  4c ea 04 0c                                      orr.w ip, ip, r4
0008b122  01 29                                            cmp r1, #1
0008b124  02 93                                            str r3, [sp, #8]
0008b126  01 d1                                            bne #0x8b12c
0008b128  10 43                                            orrs r0, r2
0008b12a  21 d1                                            bne #0x8b170
0008b12c  06 9d                                            ldr r5, [sp, #0x18]
0008b12e  68 68                                            ldr r0, [r5, #4]
0008b130  90 f8 56 10                                      ldrb.w r1, [r0, #0x56]
0008b134  e9 b9                                            cbnz r1, #0x8b172
0008b136  df f8 ac 14                                      ldr.w r1, [pc, #0x4ac]
0008b13a  0c 30                                            adds r0, #0xc
0008b13c  cd e9 04 89                                      strd r8, sb, [sp, #0x10]
0008b140  d0 46                                            mov r8, sl
0008b142  79 44                                            add r1, pc
0008b144  da 46                                            mov sl, fp
0008b146  a3 46                                            mov fp, r4
0008b148  b1 46                                            mov sb, r6
0008b14a  64 46                                            mov r4, ip
0008b14c  76 46                                            mov r6, lr
0008b14e  a9 f7 6a e9                                      blx #0x34424
0008b152  b6 46                                            mov lr, r6
0008b154  a4 46                                            mov ip, r4
0008b156  5c 46                                            mov r4, fp
0008b158  d3 46                                            mov fp, sl
0008b15a  4e 46                                            mov r6, sb
0008b15c  c2 46                                            mov sl, r8
0008b15e  dd e9 04 89                                      ldrd r8, sb, [sp, #0x10]
0008b162  01 21                                            movs r1, #1
0008b164  68 68                                            ldr r0, [r5, #4]
0008b166  80 f8 56 10                                      strb.w r1, [r0, #0x56]
0008b16a  02 e0                                            b #0x8b172
0008b16c  00 20                                            movs r0, #0
0008b16e  02 90                                            str r0, [sp, #8]
0008b170  00 24                                            movs r4, #0
0008b172  70 46                                            mov r0, lr
0008b174  be f1 03 0f                                      cmp.w lr, #3
0008b178  08 bf                                            it eq
0008b17a  00 20                                            moveq r0, #0
0008b17c  41 46                                            mov r1, r8
0008b17e  02 28                                            cmp r0, #2
0008b180  08 bf                                            it eq
0008b182  01 20                                            moveq r0, #1
0008b184  b8 f1 03 0f                                      cmp.w r8, #3
0008b188  08 bf                                            it eq
0008b18a  00 21                                            moveq r1, #0
0008b18c  02 29                                            cmp r1, #2
0008b18e  08 bf                                            it eq
0008b190  01 21                                            moveq r1, #1
0008b192  81 42                                            cmp r1, r0
0008b194  04 d0                                            beq #0x8b1a0
0008b196  da f8 10 00                                      ldr.w r0, [sl, #0x10]
0008b19a  40 68                                            ldr r0, [r0, #4]
0008b19c  03 28                                            cmp r0, #3
0008b19e  01 d1                                            bne #0x8b1a4
0008b1a0  00 20                                            movs r0, #0
0008b1a2  1a e0                                            b #0x8b1da
0008b1a4  06 9d                                            ldr r5, [sp, #0x18]
0008b1a6  0f f2 40 41                                      addw r1, pc, #0x440
0008b1aa  28 69                                            ldr r0, [r5, #0x10]
0008b1ac  01 94                                            str r4, [sp, #4]
0008b1ae  64 46                                            mov r4, ip
0008b1b0  00 96                                            str r6, [sp]
0008b1b2  4e 46                                            mov r6, sb
0008b1b4  c1 46                                            mov sb, r8
0008b1b6  d0 46                                            mov r8, sl
0008b1b8  da 46                                            mov sl, fp
0008b1ba  f3 46                                            mov fp, lr
0008b1bc  a9 f7 32 e9                                      blx #0x34424
0008b1c0  28 69                                            ldr r0, [r5, #0x10]
0008b1c2  59 46                                            mov r1, fp
0008b1c4  d3 46                                            mov fp, sl
0008b1c6  c2 46                                            mov sl, r8
0008b1c8  52 46                                            mov r2, sl
0008b1ca  c8 46                                            mov r8, sb
0008b1cc  b1 46                                            mov sb, r6
0008b1ce  00 9e                                            ldr r6, [sp]
0008b1d0  00 f0 50 fa                                      bl #0x8b674
0008b1d4  a4 46                                            mov ip, r4
0008b1d6  01 9c                                            ldr r4, [sp, #4]
0008b1d8  01 20                                            movs r0, #1
0008b1da  05 90                                            str r0, [sp, #0x14]
0008b1dc  da f8 18 00                                      ldr.w r0, [sl, #0x18]
0008b1e0  cd f8 10 c0                                      str.w ip, [sp, #0x10]
0008b1e4  69 28                                            cmp r0, #0x69
0008b1e6  05 d1                                            bne #0x8b1f4
0008b1e8  da f8 10 00                                      ldr.w r0, [sl, #0x10]
0008b1ec  00 89                                            ldrh r0, [r0, #8]
0008b1ee  c0 f3 42 20                                      ubfx r0, r0, #9, #3
0008b1f2  01 e0                                            b #0x8b1f8
0008b1f4  a8 f7 9e ea                                      blx #0x33734
0008b1f8  01 28                                            cmp r0, #1
0008b1fa  22 d1                                            bne #0x8b242
0008b1fc  06 9d                                            ldr r5, [sp, #0x18]
0008b1fe  b9 f1 01 0f                                      cmp.w sb, #1
0008b202  05 d1                                            bne #0x8b210
0008b204  da f8 1c 20                                      ldr.w r2, [sl, #0x1c]
0008b208  41 46                                            mov r1, r8
0008b20a  28 69                                            ldr r0, [r5, #0x10]
0008b20c  00 f0 32 fa                                      bl #0x8b674
0008b210  da f8 18 10                                      ldr.w r1, [sl, #0x18]
0008b214  a1 f1 0d 00                                      sub.w r0, r1, #0xd
0008b218  09 28                                            cmp r0, #9
0008b21a  2f d8                                            bhi #0x8b27c
0008b21c  50 46                                            mov r0, sl
0008b21e  da f8 10 60                                      ldr.w r6, [sl, #0x10]
0008b222  2c 69                                            ldr r4, [r5, #0x10]
0008b224  a7 f7 40 ed                                      blx #0x32ca8
0008b228  02 46                                            mov r2, r0
0008b22a  02 2a                                            cmp r2, #2
0008b22c  08 bf                                            it eq
0008b22e  01 22                                            moveq r2, #1
0008b230  20 46                                            mov r0, r4
0008b232  31 46                                            mov r1, r6
0008b234  01 23                                            movs r3, #1
0008b236  00 f0 39 fa                                      bl #0x8b6ac
0008b23a  28 69                                            ldr r0, [r5, #0x10]
0008b23c  0f f2 a8 31                                      addw r1, pc, #0x3a8
0008b240  4b e0                                            b #0x8b2da
0008b242  da f8 18 00                                      ldr.w r0, [sl, #0x18]
0008b246  5e 28                                            cmp r0, #0x5e
0008b248  34 d1                                            bne #0x8b2b4
0008b24a  da f8 1c 00                                      ldr.w r0, [sl, #0x1c]
0008b24e  06 9d                                            ldr r5, [sp, #0x18]
0008b250  18 b1                                            cbz r0, #0x8b25a
0008b252  01 68                                            ldr r1, [r0]
0008b254  8a 68                                            ldr r2, [r1, #8]
0008b256  29 46                                            mov r1, r5
0008b258  90 47                                            blx r2
0008b25a  28 69                                            ldr r0, [r5, #0x10]
0008b25c  0f f2 dc 31                                      addw r1, pc, #0x3dc
0008b260  a9 f7 e0 e8                                      blx #0x34424
0008b264  da f8 20 00                                      ldr.w r0, [sl, #0x20]
0008b268  05 9c                                            ldr r4, [sp, #0x14]
0008b26a  18 b1                                            cbz r0, #0x8b274
0008b26c  01 68                                            ldr r1, [r0]
0008b26e  8a 68                                            ldr r2, [r1, #8]
0008b270  29 46                                            mov r1, r5
0008b272  90 47                                            blx r2
0008b274  28 69                                            ldr r0, [r5, #0x10]
0008b276  0f f2 c8 31                                      addw r1, pc, #0x3c8
0008b27a  9f e0                                            b #0x8b3bc
0008b27c  a1 f1 17 00                                      sub.w r0, r1, #0x17
0008b280  03 28                                            cmp r0, #3
0008b282  1d d8                                            bhi #0x8b2c0
0008b284  28 69                                            ldr r0, [r5, #0x10]
0008b286  0f f2 dc 31                                      addw r1, pc, #0x3dc
0008b28a  a9 f7 cc e8                                      blx #0x34424
0008b28e  50 46                                            mov r0, sl
0008b290  da f8 10 40                                      ldr.w r4, [sl, #0x10]
0008b294  2e 69                                            ldr r6, [r5, #0x10]
0008b296  a7 f7 08 ed                                      blx #0x32ca8
0008b29a  02 46                                            mov r2, r0
0008b29c  02 2a                                            cmp r2, #2
0008b29e  08 bf                                            it eq
0008b2a0  01 22                                            moveq r2, #1
0008b2a2  30 46                                            mov r0, r6
0008b2a4  21 46                                            mov r1, r4
0008b2a6  01 23                                            movs r3, #1
0008b2a8  00 f0 00 fa                                      bl #0x8b6ac
0008b2ac  28 69                                            ldr r0, [r5, #0x10]
0008b2ae  0f f2 c0 31                                      addw r1, pc, #0x3c0
0008b2b2  12 e0                                            b #0x8b2da
0008b2b4  a0 f1 56 01                                      sub.w r1, r0, #0x56
0008b2b8  04 29                                            cmp r1, #4
0008b2ba  23 d2                                            bhs #0x8b304
0008b2bc  06 9d                                            ldr r5, [sp, #0x18]
0008b2be  42 e0                                            b #0x8b346
0008b2c0  05 29                                            cmp r1, #5
0008b2c2  40 f0 8d 80                                      bne.w #0x8b3e0
0008b2c6  0f f2 84 32                                      addw r2, pc, #0x384
0008b2ca  28 69                                            ldr r0, [r5, #0x10]
0008b2cc  a8 f1 01 03                                      sub.w r3, r8, #1
0008b2d0  0f f2 88 31                                      addw r1, pc, #0x388
0008b2d4  02 2b                                            cmp r3, #2
0008b2d6  38 bf                                            it lo
0008b2d8  11 46                                            movlo r1, r2
0008b2da  a9 f7 a4 e8                                      blx #0x34424
0008b2de  da f8 1c 00                                      ldr.w r0, [sl, #0x1c]
0008b2e2  05 9c                                            ldr r4, [sp, #0x14]
0008b2e4  18 b1                                            cbz r0, #0x8b2ee
0008b2e6  01 68                                            ldr r1, [r0]
0008b2e8  8a 68                                            ldr r2, [r1, #8]
0008b2ea  29 46                                            mov r1, r5
0008b2ec  90 47                                            blx r2
0008b2ee  28 69                                            ldr r0, [r5, #0x10]
0008b2f0  c1 a1                                            adr r1, #0x304
0008b2f2  a9 f7 98 e8                                      blx #0x34424
0008b2f6  da f8 18 00                                      ldr.w r0, [sl, #0x18]
0008b2fa  05 28                                            cmp r0, #5
0008b2fc  60 d1                                            bne #0x8b3c0
0008b2fe  28 69                                            ldr r0, [r5, #0x10]
0008b300  bd a1                                            adr r1, #0x2f4
0008b302  5b e0                                            b #0x8b3bc
0008b304  69 28                                            cmp r0, #0x69
0008b306  74 d0                                            beq #0x8b3f2
0008b308  45 28                                            cmp r0, #0x45
0008b30a  79 d1                                            bne #0x8b400
0008b30c  06 9d                                            ldr r5, [sp, #0x18]
0008b30e  b6 a6                                            adr r6, #0x2d8
0008b310  31 46                                            mov r1, r6
0008b312  28 69                                            ldr r0, [r5, #0x10]
0008b314  a9 f7 86 e8                                      blx #0x34424
0008b318  da f8 10 00                                      ldr.w r0, [sl, #0x10]
0008b31c  03 90                                            str r0, [sp, #0xc]
0008b31e  50 46                                            mov r0, sl
0008b320  d5 f8 10 b0                                      ldr.w fp, [r5, #0x10]
0008b324  a7 f7 c0 ec                                      blx #0x32ca8
0008b328  02 46                                            mov r2, r0
0008b32a  02 2a                                            cmp r2, #2
0008b32c  08 bf                                            it eq
0008b32e  01 22                                            moveq r2, #1
0008b330  03 99                                            ldr r1, [sp, #0xc]
0008b332  58 46                                            mov r0, fp
0008b334  01 23                                            movs r3, #1
0008b336  00 f0 b9 f9                                      bl #0x8b6ac
0008b33a  28 69                                            ldr r0, [r5, #0x10]
0008b33c  31 46                                            mov r1, r6
0008b33e  a9 f7 72 e8                                      blx #0x34424
0008b342  da f8 18 00                                      ldr.w r0, [sl, #0x18]
0008b346  a9 4a                                            ldr r2, [pc, #0x2a4]
0008b348  a9 49                                            ldr r1, [pc, #0x2a4]
0008b34a  7a 44                                            add r2, pc
0008b34c  2b 69                                            ldr r3, [r5, #0x10]
0008b34e  79 44                                            add r1, pc
0008b350  52 f8 20 20                                      ldr.w r2, [r2, r0, lsl #2]
0008b354  18 46                                            mov r0, r3
0008b356  a9 f7 66 e8                                      blx #0x34424
0008b35a  da f8 1c 20                                      ldr.w r2, [sl, #0x1c]
0008b35e  6a b1                                            cbz r2, #0x8b37c
0008b360  b9 f1 01 0f                                      cmp.w sb, #1
0008b364  05 d1                                            bne #0x8b372
0008b366  28 69                                            ldr r0, [r5, #0x10]
0008b368  41 46                                            mov r1, r8
0008b36a  00 f0 83 f9                                      bl #0x8b674
0008b36e  da f8 1c 20                                      ldr.w r2, [sl, #0x1c]
0008b372  10 68                                            ldr r0, [r2]
0008b374  29 46                                            mov r1, r5
0008b376  83 68                                            ldr r3, [r0, #8]
0008b378  10 46                                            mov r0, r2
0008b37a  98 47                                            blx r3
0008b37c  28 69                                            ldr r0, [r5, #0x10]
0008b37e  9d a1                                            adr r1, #0x274
0008b380  a9 f7 50 e8                                      blx #0x34424
0008b384  da f8 20 20                                      ldr.w r2, [sl, #0x20]
0008b388  05 9c                                            ldr r4, [sp, #0x14]
0008b38a  6a b1                                            cbz r2, #0x8b3a8
0008b38c  04 98                                            ldr r0, [sp, #0x10]
0008b38e  01 28                                            cmp r0, #1
0008b390  05 d1                                            bne #0x8b39e
0008b392  28 69                                            ldr r0, [r5, #0x10]
0008b394  41 46                                            mov r1, r8
0008b396  00 f0 6d f9                                      bl #0x8b674
0008b39a  da f8 20 20                                      ldr.w r2, [sl, #0x20]
0008b39e  10 68                                            ldr r0, [r2]
0008b3a0  29 46                                            mov r1, r5
0008b3a2  83 68                                            ldr r3, [r0, #8]
0008b3a4  10 46                                            mov r0, r2
0008b3a6  98 47                                            blx r3
0008b3a8  28 69                                            ldr r0, [r5, #0x10]
0008b3aa  93 a1                                            adr r1, #0x24c
0008b3ac  a9 f7 3a e8                                      blx #0x34424
0008b3b0  da f8 18 00                                      ldr.w r0, [sl, #0x18]
0008b3b4  45 28                                            cmp r0, #0x45
0008b3b6  03 d1                                            bne #0x8b3c0
0008b3b8  28 69                                            ldr r0, [r5, #0x10]
0008b3ba  90 a1                                            adr r1, #0x240
0008b3bc  a9 f7 32 e8                                      blx #0x34424
0008b3c0  01 2c                                            cmp r4, #1
0008b3c2  03 d1                                            bne #0x8b3cc
0008b3c4  28 69                                            ldr r0, [r5, #0x10]
0008b3c6  8c a1                                            adr r1, #0x230
0008b3c8  a9 f7 2c e8                                      blx #0x34424
0008b3cc  28 46                                            mov r0, r5
0008b3ce  a9 f7 38 e9                                      blx #0x34640
0008b3d2  e8 68                                            ldr r0, [r5, #0xc]
0008b3d4  01 38                                            subs r0, #1
0008b3d6  e8 60                                            str r0, [r5, #0xc]
0008b3d8  07 b0                                            add sp, #0x1c
0008b3da  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
0008b3de  f0 bd                                            pop {r4, r5, r6, r7, pc}
0008b3e0  98 4a                                            ldr r2, [pc, #0x260]
0008b3e2  28 69                                            ldr r0, [r5, #0x10]
0008b3e4  7a 44                                            add r2, pc
0008b3e6  52 f8 21 20                                      ldr.w r2, [r2, r1, lsl #2]
0008b3ea  97 a1                                            adr r1, #0x25c
0008b3ec  a9 f7 1a e8                                      blx #0x34424
0008b3f0  75 e7                                            b #0x8b2de
0008b3f2  da f8 10 00                                      ldr.w r0, [sl, #0x10]
0008b3f6  00 89                                            ldrh r0, [r0, #8]
0008b3f8  c0 f3 42 21                                      ubfx r1, r0, #9, #3
0008b3fc  69 20                                            movs r0, #0x69
0008b3fe  04 e0                                            b #0x8b40a
0008b400  a8 f7 98 e9                                      blx #0x33734
0008b404  01 46                                            mov r1, r0
0008b406  da f8 18 00                                      ldr.w r0, [sl, #0x18]
0008b40a  02 29                                            cmp r1, #2
0008b40c  07 d1                                            bne #0x8b41e
0008b40e  00 21                                            movs r1, #0
0008b410  42 28                                            cmp r0, #0x42
0008b412  18 bf                                            it ne
0008b414  01 21                                            movne r1, #1
0008b416  31 43                                            orrs r1, r6
0008b418  51 ea 0b 01                                      orrs.w r1, r1, fp
0008b41c  73 d0                                            beq #0x8b506
0008b41e  69 28                                            cmp r0, #0x69
0008b420  05 d1                                            bne #0x8b42e
0008b422  da f8 10 00                                      ldr.w r0, [sl, #0x10]
0008b426  00 89                                            ldrh r0, [r0, #8]
0008b428  c0 f3 42 21                                      ubfx r1, r0, #9, #3
0008b42c  02 e0                                            b #0x8b434
0008b42e  a8 f7 82 e9                                      blx #0x33734
0008b432  01 46                                            mov r1, r0
0008b434  06 9d                                            ldr r5, [sp, #0x18]
0008b436  02 29                                            cmp r1, #2
0008b438  03 9e                                            ldr r6, [sp, #0xc]
0008b43a  28 69                                            ldr r0, [r5, #0x10]
0008b43c  1b d1                                            bne #0x8b476
0008b43e  6a a1                                            adr r1, #0x1a8
0008b440  a8 f7 f0 ef                                      blx #0x34424
0008b444  da f8 1c 20                                      ldr.w r2, [sl, #0x1c]
0008b448  00 2a                                            cmp r2, #0
0008b44a  00 f0 90 80                                      beq.w #0x8b56e
0008b44e  02 9e                                            ldr r6, [sp, #8]
0008b450  01 2e                                            cmp r6, #1
0008b452  79 d1                                            bne #0x8b548
0008b454  28 69                                            ldr r0, [r5, #0x10]
0008b456  74 a1                                            adr r1, #0x1d0
0008b458  a8 f7 e4 ef                                      blx #0x34424
0008b45c  da f8 20 10                                      ldr.w r1, [sl, #0x20]
0008b460  42 46                                            mov r2, r8
0008b462  28 69                                            ldr r0, [r5, #0x10]
0008b464  00 23                                            movs r3, #0
0008b466  09 69                                            ldr r1, [r1, #0x10]
0008b468  00 f0 20 f9                                      bl #0x8b6ac
0008b46c  28 69                                            ldr r0, [r5, #0x10]
0008b46e  5e a1                                            adr r1, #0x178
0008b470  a8 f7 d8 ef                                      blx #0x34424
0008b474  6f e0                                            b #0x8b556
0008b476  6a 4a                                            ldr r2, [pc, #0x1a8]
0008b478  da f8 18 30                                      ldr.w r3, [sl, #0x18]
0008b47c  7a 44                                            add r2, pc
0008b47e  69 49                                            ldr r1, [pc, #0x1a4]
0008b480  52 f8 23 20                                      ldr.w r2, [r2, r3, lsl #2]
0008b484  79 44                                            add r1, pc
0008b486  a8 f7 ce ef                                      blx #0x34424
0008b48a  da f8 1c 20                                      ldr.w r2, [sl, #0x1c]
0008b48e  6a b1                                            cbz r2, #0x8b4ac
0008b490  b9 f1 01 0f                                      cmp.w sb, #1
0008b494  05 d1                                            bne #0x8b4a2
0008b496  28 69                                            ldr r0, [r5, #0x10]
0008b498  41 46                                            mov r1, r8
0008b49a  00 f0 eb f8                                      bl #0x8b674
0008b49e  da f8 1c 20                                      ldr.w r2, [sl, #0x1c]
0008b4a2  10 68                                            ldr r0, [r2]
0008b4a4  29 46                                            mov r1, r5
0008b4a6  83 68                                            ldr r3, [r0, #8]
0008b4a8  10 46                                            mov r0, r2
0008b4aa  98 47                                            blx r3
0008b4ac  28 69                                            ldr r0, [r5, #0x10]
0008b4ae  51 a1                                            adr r1, #0x144
0008b4b0  a8 f7 b8 ef                                      blx #0x34424
0008b4b4  da f8 20 20                                      ldr.w r2, [sl, #0x20]
0008b4b8  05 9c                                            ldr r4, [sp, #0x14]
0008b4ba  6a b1                                            cbz r2, #0x8b4d8
0008b4bc  04 98                                            ldr r0, [sp, #0x10]
0008b4be  01 28                                            cmp r0, #1
0008b4c0  05 d1                                            bne #0x8b4ce
0008b4c2  28 69                                            ldr r0, [r5, #0x10]
0008b4c4  41 46                                            mov r1, r8
0008b4c6  00 f0 d5 f8                                      bl #0x8b674
0008b4ca  da f8 20 20                                      ldr.w r2, [sl, #0x20]
0008b4ce  10 68                                            ldr r0, [r2]
0008b4d0  29 46                                            mov r1, r5
0008b4d2  83 68                                            ldr r3, [r0, #8]
0008b4d4  10 46                                            mov r0, r2
0008b4d6  98 47                                            blx r3
0008b4d8  28 69                                            ldr r0, [r5, #0x10]
0008b4da  46 a1                                            adr r1, #0x118
0008b4dc  a8 f7 a2 ef                                      blx #0x34424
0008b4e0  da f8 24 20                                      ldr.w r2, [sl, #0x24]
0008b4e4  00 2a                                            cmp r2, #0
0008b4e6  3f f4 0a af                                      beq.w #0x8b2fe
0008b4ea  01 2e                                            cmp r6, #1
0008b4ec  05 d1                                            bne #0x8b4fa
0008b4ee  28 69                                            ldr r0, [r5, #0x10]
0008b4f0  41 46                                            mov r1, r8
0008b4f2  00 f0 bf f8                                      bl #0x8b674
0008b4f6  da f8 24 20                                      ldr.w r2, [sl, #0x24]
0008b4fa  10 68                                            ldr r0, [r2]
0008b4fc  29 46                                            mov r1, r5
0008b4fe  83 68                                            ldr r3, [r0, #8]
0008b500  10 46                                            mov r0, r2
0008b502  98 47                                            blx r3
0008b504  fb e6                                            b #0x8b2fe
0008b506  06 9d                                            ldr r5, [sp, #0x18]
0008b508  37 a1                                            adr r1, #0xdc
0008b50a  28 69                                            ldr r0, [r5, #0x10]
0008b50c  a8 f7 8a ef                                      blx #0x34424
0008b510  da f8 1c 00                                      ldr.w r0, [sl, #0x1c]
0008b514  01 68                                            ldr r1, [r0]
0008b516  8a 68                                            ldr r2, [r1, #8]
0008b518  29 46                                            mov r1, r5
0008b51a  90 47                                            blx r2
0008b51c  38 a3                                            adr r3, #0xe0
0008b51e  28 69                                            ldr r0, [r5, #0x10]
0008b520  a8 f1 01 02                                      sub.w r2, r8, #1
0008b524  39 a1                                            adr r1, #0xe4
0008b526  02 2a                                            cmp r2, #2
0008b528  28 bf                                            it hs
0008b52a  19 46                                            movhs r1, r3
0008b52c  a8 f7 7a ef                                      blx #0x34424
0008b530  da f8 20 00                                      ldr.w r0, [sl, #0x20]
0008b534  01 68                                            ldr r1, [r0]
0008b536  8a 68                                            ldr r2, [r1, #8]
0008b538  29 46                                            mov r1, r5
0008b53a  90 47                                            blx r2
0008b53c  28 69                                            ldr r0, [r5, #0x10]
0008b53e  37 a1                                            adr r1, #0xdc
0008b540  a8 f7 70 ef                                      blx #0x34424
0008b544  05 9c                                            ldr r4, [sp, #0x14]
0008b546  3b e7                                            b #0x8b3c0
0008b548  b9 f1 01 0f                                      cmp.w sb, #1
0008b54c  03 d1                                            bne #0x8b556
0008b54e  28 69                                            ldr r0, [r5, #0x10]
0008b550  41 46                                            mov r1, r8
0008b552  00 f0 8f f8                                      bl #0x8b674
0008b556  da f8 1c 00                                      ldr.w r0, [sl, #0x1c]
0008b55a  01 68                                            ldr r1, [r0]
0008b55c  8a 68                                            ldr r2, [r1, #8]
0008b55e  29 46                                            mov r1, r5
0008b560  90 47                                            blx r2
0008b562  01 2e                                            cmp r6, #1
0008b564  03 d1                                            bne #0x8b56e
0008b566  28 69                                            ldr r0, [r5, #0x10]
0008b568  23 a1                                            adr r1, #0x8c
0008b56a  a8 f7 5c ef                                      blx #0x34424
0008b56e  31 4a                                            ldr r2, [pc, #0xc4]
0008b570  26 46                                            mov r6, r4
0008b572  da f8 18 30                                      ldr.w r3, [sl, #0x18]
0008b576  7a 44                                            add r2, pc
0008b578  2f 49                                            ldr r1, [pc, #0xbc]
0008b57a  28 69                                            ldr r0, [r5, #0x10]
0008b57c  52 f8 23 20                                      ldr.w r2, [r2, r3, lsl #2]
0008b580  79 44                                            add r1, pc
0008b582  a8 f7 50 ef                                      blx #0x34424
0008b586  da f8 20 20                                      ldr.w r2, [sl, #0x20]
0008b58a  05 9c                                            ldr r4, [sp, #0x14]
0008b58c  00 2a                                            cmp r2, #0
0008b58e  3f f4 b6 ae                                      beq.w #0x8b2fe
0008b592  01 2e                                            cmp r6, #1
0008b594  10 d1                                            bne #0x8b5b8
0008b596  28 69                                            ldr r0, [r5, #0x10]
0008b598  23 a1                                            adr r1, #0x8c
0008b59a  a8 f7 44 ef                                      blx #0x34424
0008b59e  da f8 1c 10                                      ldr.w r1, [sl, #0x1c]
0008b5a2  42 46                                            mov r2, r8
0008b5a4  28 69                                            ldr r0, [r5, #0x10]
0008b5a6  00 23                                            movs r3, #0
0008b5a8  09 69                                            ldr r1, [r1, #0x10]
0008b5aa  00 f0 7f f8                                      bl #0x8b6ac
0008b5ae  28 69                                            ldr r0, [r5, #0x10]
0008b5b0  0d a1                                            adr r1, #0x34
0008b5b2  a8 f7 38 ef                                      blx #0x34424
0008b5b6  06 e0                                            b #0x8b5c6
0008b5b8  04 98                                            ldr r0, [sp, #0x10]
0008b5ba  01 28                                            cmp r0, #1
0008b5bc  03 d1                                            bne #0x8b5c6
0008b5be  28 69                                            ldr r0, [r5, #0x10]
0008b5c0  41 46                                            mov r1, r8
0008b5c2  00 f0 57 f8                                      bl #0x8b674
0008b5c6  da f8 20 00                                      ldr.w r0, [sl, #0x20]
0008b5ca  01 68                                            ldr r1, [r0]
0008b5cc  8a 68                                            ldr r2, [r1, #8]
0008b5ce  29 46                                            mov r1, r5
0008b5d0  90 47                                            blx r2
0008b5d2  01 2e                                            cmp r6, #1
0008b5d4  7f f4 93 ae                                      bne.w #0x8b2fe
0008b5d8  28 69                                            ldr r0, [r5, #0x10]
0008b5da  07 a1                                            adr r1, #0x1c
0008b5dc  a8 f7 22 ef                                      blx #0x34424
0008b5e0  8d e6                                            b #0x8b2fe
0008b5e2  00 bf                                            nop
0008b5e4  76 5e                                            ldrsh r6, [r6, r1]
0008b5e6  03 00                                            movs r3, r0
0008b5e8  28 00                                            movs r0, r5
0008b5ea  00 00                                            movs r0, r0
0008b5ec  ca d3                                            blo #0x8b584
0008b5ee  04 00                                            movs r4, r0
0008b5f0  64 57                                            ldrsb r4, [r4, r5]
0008b5f2  03 00                                            movs r3, r0
0008b5f4  2c 20                                            movs r0, #0x2c
0008b5f6  00 00                                            movs r0, r0
0008b5f8  29 00                                            movs r1, r5
0008b5fa  00 00                                            movs r0, r0
0008b5fc  29 29                                            cmp r1, #0x29
0008b5fe  00 00                                            movs r0, r0
0008b600  20 2a                                            cmp r2, #0x20
0008b602  20 28                                            cmp r0, #0x20
0008b604  31 2e                                            cmp r6, #0x31
0008b606  30 2f                                            cmp r7, #0x30
0008b608  28 00                                            movs r0, r5
0008b60a  00 00                                            movs r0, r0
0008b60c  20 2a                                            cmp r2, #0x20
0008b60e  20 28                                            cmp r0, #0x20
0008b610  31 2e                                            cmp r6, #0x31
0008b612  30 68                                            ldr r0, [r6]
0008b614  2f 68                                            ldr r7, [r5]
0008b616  61 6c                                            ldr r1, [r4, #0x44]
0008b618  66 28                                            cmp r0, #0x66
0008b61a  00 00                                            movs r0, r0
0008b61c  29 29                                            cmp r1, #0x29
0008b61e  29 00                                            movs r1, r5
0008b620  98 d2                                            bhs #0x8b554
0008b622  04 00                                            movs r4, r0
0008b624  2e 56                                            ldrsb r6, [r5, r0]
0008b626  03 00                                            movs r3, r0
0008b628  5f 78                                            ldrb r7, [r3, #1]
0008b62a  6c 69                                            ldr r4, [r5, #0x14]
0008b62c  6e 69                                            ldr r6, [r5, #0x14]
0008b62e  74 5f                                            ldrsh r4, [r6, r5]
0008b630  00 00                                            movs r0, r0
0008b632  00 00                                            movs r0, r0
0008b634  9e d1                                            bne #0x8b574
0008b636  04 00                                            movs r4, r0
0008b638  37 55                                            strb r7, [r6, r4]
0008b63a  03 00                                            movs r3, r0
0008b63c  5b 00                                            lsls r3, r3, #1
0008b63e  00 00                                            movs r0, r0
0008b640  5d 00                                            lsls r5, r3, #1
0008b642  00 00                                            movs r0, r0
0008b644  30 d3                                            blo #0x8b6a8
0008b646  04 00                                            movs r4, r0
0008b648  25 73                                            strb r5, [r4, #0xc]
0008b64a  28 00                                            movs r0, r5
0008b64c  28 28                                            cmp r0, #0x28
0008b64e  68 61                                            str r0, [r5, #0x14]
0008b650  6c 66                                            str r4, [r5, #0x64]
0008b652  29 31                                            adds r1, #0x29
0008b654  2e 30                                            adds r0, #0x2e
0008b656  2f 28                                            cmp r0, #0x2f
0008b658  00 00                                            movs r0, r0
0008b65a  00 00                                            movs r0, r0
0008b65c  28 31                                            adds r1, #0x28
0008b65e  2e 30                                            adds r0, #0x2e
0008b660  2f 28                                            cmp r0, #0x2f
0008b662  00 00                                            movs r0, r0
0008b664  61 73                                            strb r1, [r4, #0xd]
0008b666  5f 74                                            strb r7, [r3, #0x11]
0008b668  79 70                                            strb r1, [r7, #1]
0008b66a  65 3c                                            subs r4, #0x65
0008b66c  00 00                                            movs r0, r0
0008b66e  00 00                                            movs r0, r0
0008b670  3e 28                                            cmp r0, #0x3e
0008b672  00 00                                            movs r0, r0

; FUNCTION 0x0008bb60, declared_size=836, range_size=836, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor5visitEP10ir_texture
; demangled: ir_print_metal_visitor::visit(ir_texture*)
; decoder-mode: thumb
0008bb60  f0 b5                                            push {r4, r5, r6, r7, lr}
0008bb62  03 af                                            add r7, sp, #0xc
0008bb64  2d e9 00 07                                      push.w {r8, sb, sl}
0008bb68  8a 46                                            mov sl, r1
0008bb6a  04 46                                            mov r4, r0
0008bb6c  da e9 07 01                                      ldrd r0, r1, [sl, #0x1c]
0008bb70  09 69                                            ldr r1, [r1, #0x10]
0008bb72  02 68                                            ldr r2, [r0]
0008bb74  03 69                                            ldr r3, [r0, #0x10]
0008bb76  0e 89                                            ldrh r6, [r1, #8]
0008bb78  21 46                                            mov r1, r4
0008bb7a  92 68                                            ldr r2, [r2, #8]
0008bb7c  1d 89                                            ldrh r5, [r3, #8]
0008bb7e  90 47                                            blx r2
0008bb80  05 f0 07 08                                      and r8, r5, #7
0008bb84  8c a0                                            adr r0, #0x230
0008bb86  15 f0 08 01                                      ands r1, r5, #8
0008bb8a  c6 f3 42 29                                      ubfx sb, r6, #9, #3
0008bb8e  50 f8 28 00                                      ldr.w r0, [r0, r8, lsl #2]
0008bb92  00 eb d1 05                                      add.w r5, r0, r1, lsr #3
0008bb96  3b d1                                            bne #0x8bc10
0008bb98  b2 49                                            ldr r1, [pc, #0x2c8]
0008bb9a  26 46                                            mov r6, r4
0008bb9c  56 f8 10 0f                                      ldr r0, [r6, #0x10]!
0008bba0  79 44                                            add r1, pc
0008bba2  a8 f7 40 ec                                      blx #0x34424
0008bba6  da f8 1c 00                                      ldr.w r0, [sl, #0x1c]
0008bbaa  01 68                                            ldr r1, [r0]
0008bbac  8a 68                                            ldr r2, [r1, #8]
0008bbae  21 46                                            mov r1, r4
0008bbb0  90 47                                            blx r2
0008bbb2  30 68                                            ldr r0, [r6]
0008bbb4  92 a1                                            adr r1, #0x248
0008bbb6  a8 f7 36 ec                                      blx #0x34424
0008bbba  30 68                                            ldr r0, [r6]
0008bbbc  4d 45                                            cmp r5, sb
0008bbbe  6c da                                            bge #0x8bc9a
0008bbc0  aa 4a                                            ldr r2, [pc, #0x2a8]
0008bbc2  03 2d                                            cmp r5, #3
0008bbc4  aa 49                                            ldr r1, [pc, #0x2a8]
0008bbc6  7a 44                                            add r2, pc
0008bbc8  79 44                                            add r1, pc
0008bbca  18 bf                                            it ne
0008bbcc  11 46                                            movne r1, r2
0008bbce  a8 f7 2a ec                                      blx #0x34424
0008bbd2  da f8 20 00                                      ldr.w r0, [sl, #0x20]
0008bbd6  01 68                                            ldr r1, [r0]
0008bbd8  8a 68                                            ldr r2, [r1, #8]
0008bbda  21 46                                            mov r1, r4
0008bbdc  90 47                                            blx r2
0008bbde  a5 4a                                            ldr r2, [pc, #0x294]
0008bbe0  03 2d                                            cmp r5, #3
0008bbe2  a5 49                                            ldr r1, [pc, #0x294]
0008bbe4  7a 44                                            add r2, pc
0008bbe6  20 69                                            ldr r0, [r4, #0x10]
0008bbe8  79 44                                            add r1, pc
0008bbea  18 bf                                            it ne
0008bbec  11 46                                            movne r1, r2
0008bbee  a8 f7 1a ec                                      blx #0x34424
0008bbf2  da f8 20 00                                      ldr.w r0, [sl, #0x20]
0008bbf6  01 68                                            ldr r1, [r0]
0008bbf8  8a 68                                            ldr r2, [r1, #8]
0008bbfa  21 46                                            mov r1, r4
0008bbfc  90 47                                            blx r2
0008bbfe  9f 4a                                            ldr r2, [pc, #0x27c]
0008bc00  9f a1                                            adr r1, #0x27c
0008bc02  20 69                                            ldr r0, [r4, #0x10]
0008bc04  b9 f1 04 0f                                      cmp.w sb, #4
0008bc08  7a 44                                            add r2, pc
0008bc0a  08 bf                                            it eq
0008bc0c  11 46                                            moveq r1, r2
0008bc0e  78 e0                                            b #0x8bd02
0008bc10  60 68                                            ldr r0, [r4, #4]
0008bc12  90 f8 57 10                                      ldrb.w r1, [r0, #0x57]
0008bc16  41 b9                                            cbnz r1, #0x8bc2a
0008bc18  6e 49                                            ldr r1, [pc, #0x1b8]
0008bc1a  0c 30                                            adds r0, #0xc
0008bc1c  79 44                                            add r1, pc
0008bc1e  a8 f7 02 ec                                      blx #0x34424
0008bc22  60 68                                            ldr r0, [r4, #4]
0008bc24  01 21                                            movs r1, #1
0008bc26  80 f8 57 10                                      strb.w r1, [r0, #0x57]
0008bc2a  26 46                                            mov r6, r4
0008bc2c  6a a1                                            adr r1, #0x1a8
0008bc2e  56 f8 10 0f                                      ldr r0, [r6, #0x10]!
0008bc32  a8 f7 f8 eb                                      blx #0x34424
0008bc36  30 68                                            ldr r0, [r6]
0008bc38  71 a1                                            adr r1, #0x1c4
0008bc3a  a8 f7 f4 eb                                      blx #0x34424
0008bc3e  30 68                                            ldr r0, [r6]
0008bc40  4d 45                                            cmp r5, sb
0008bc42  3a da                                            bge #0x8bcba
0008bc44  6f a1                                            adr r1, #0x1bc
0008bc46  a8 f7 ee eb                                      blx #0x34424
0008bc4a  da f8 20 00                                      ldr.w r0, [sl, #0x20]
0008bc4e  01 68                                            ldr r1, [r0]
0008bc50  8a 68                                            ldr r2, [r1, #8]
0008bc52  21 46                                            mov r1, r4
0008bc54  90 47                                            blx r2
0008bc56  7a 49                                            ldr r1, [pc, #0x1e8]
0008bc58  20 69                                            ldr r0, [r4, #0x10]
0008bc5a  79 44                                            add r1, pc
0008bc5c  a8 f7 e2 eb                                      blx #0x34424
0008bc60  da f8 20 00                                      ldr.w r0, [sl, #0x20]
0008bc64  01 68                                            ldr r1, [r0]
0008bc66  8a 68                                            ldr r2, [r1, #8]
0008bc68  21 46                                            mov r1, r4
0008bc6a  90 47                                            blx r2
0008bc6c  20 69                                            ldr r0, [r4, #0x10]
0008bc6e  75 a1                                            adr r1, #0x1d4
0008bc70  a8 f7 d8 eb                                      blx #0x34424
0008bc74  da f8 20 00                                      ldr.w r0, [sl, #0x20]
0008bc78  01 68                                            ldr r1, [r0]
0008bc7a  8a 68                                            ldr r2, [r1, #8]
0008bc7c  21 46                                            mov r1, r4
0008bc7e  90 47                                            blx r2
0008bc80  20 69                                            ldr r0, [r4, #0x10]
0008bc82  74 a1                                            adr r1, #0x1d0
0008bc84  a8 f7 ce eb                                      blx #0x34424
0008bc88  da f8 20 00                                      ldr.w r0, [sl, #0x20]
0008bc8c  01 68                                            ldr r1, [r0]
0008bc8e  8a 68                                            ldr r2, [r1, #8]
0008bc90  21 46                                            mov r1, r4
0008bc92  90 47                                            blx r2
0008bc94  20 69                                            ldr r0, [r4, #0x10]
0008bc96  69 a1                                            adr r1, #0x1a4
0008bc98  33 e0                                            b #0x8bd02
0008bc9a  5a a2                                            adr r2, #0x168
0008bc9c  5c a1                                            adr r1, #0x170
0008bc9e  03 2d                                            cmp r5, #3
0008bca0  18 bf                                            it ne
0008bca2  11 46                                            movne r1, r2
0008bca4  a8 f7 be eb                                      blx #0x34424
0008bca8  da f8 20 00                                      ldr.w r0, [sl, #0x20]
0008bcac  01 68                                            ldr r1, [r0]
0008bcae  8a 68                                            ldr r2, [r1, #8]
0008bcb0  21 46                                            mov r1, r4
0008bcb2  90 47                                            blx r2
0008bcb4  20 69                                            ldr r0, [r4, #0x10]
0008bcb6  6c a1                                            adr r1, #0x1b0
0008bcb8  23 e0                                            b #0x8bd02
0008bcba  52 a2                                            adr r2, #0x148
0008bcbc  54 a1                                            adr r1, #0x150
0008bcbe  b9 f1 04 0f                                      cmp.w sb, #4
0008bcc2  18 bf                                            it ne
0008bcc4  11 46                                            movne r1, r2
0008bcc6  a8 f7 ae eb                                      blx #0x34424
0008bcca  da f8 20 00                                      ldr.w r0, [sl, #0x20]
0008bcce  01 68                                            ldr r1, [r0]
0008bcd0  8a 68                                            ldr r2, [r1, #8]
0008bcd2  21 46                                            mov r1, r4
0008bcd4  90 47                                            blx r2
0008bcd6  51 a2                                            adr r2, #0x144
0008bcd8  20 69                                            ldr r0, [r4, #0x10]
0008bcda  54 a1                                            adr r1, #0x150
0008bcdc  b9 f1 04 0f                                      cmp.w sb, #4
0008bce0  18 bf                                            it ne
0008bce2  11 46                                            movne r1, r2
0008bce4  a8 f7 9e eb                                      blx #0x34424
0008bce8  da f8 20 00                                      ldr.w r0, [sl, #0x20]
0008bcec  01 68                                            ldr r1, [r0]
0008bcee  8a 68                                            ldr r2, [r1, #8]
0008bcf0  21 46                                            mov r1, r4
0008bcf2  90 47                                            blx r2
0008bcf4  50 a2                                            adr r2, #0x140
0008bcf6  51 a1                                            adr r1, #0x144
0008bcf8  20 69                                            ldr r0, [r4, #0x10]
0008bcfa  b9 f1 04 0f                                      cmp.w sb, #4
0008bcfe  18 bf                                            it ne
0008bd00  11 46                                            movne r1, r2
0008bd02  a8 f7 90 eb                                      blx #0x34424
0008bd06  da f8 18 00                                      ldr.w r0, [sl, #0x18]
0008bd0a  01 28                                            cmp r0, #1
0008bd0c  10 d1                                            bne #0x8bd30
0008bd0e  5e 49                                            ldr r1, [pc, #0x178]
0008bd10  30 68                                            ldr r0, [r6]
0008bd12  79 44                                            add r1, pc
0008bd14  a8 f7 86 eb                                      blx #0x34424
0008bd18  da f8 28 00                                      ldr.w r0, [sl, #0x28]
0008bd1c  01 68                                            ldr r1, [r0]
0008bd1e  8a 68                                            ldr r2, [r1, #8]
0008bd20  21 46                                            mov r1, r4
0008bd22  90 47                                            blx r2
0008bd24  30 68                                            ldr r0, [r6]
0008bd26  50 a1                                            adr r1, #0x140
0008bd28  a8 f7 7c eb                                      blx #0x34424
0008bd2c  da f8 18 00                                      ldr.w r0, [sl, #0x18]
0008bd30  02 28                                            cmp r0, #2
0008bd32  10 d1                                            bne #0x8bd56
0008bd34  55 49                                            ldr r1, [pc, #0x154]
0008bd36  30 68                                            ldr r0, [r6]
0008bd38  79 44                                            add r1, pc
0008bd3a  a8 f7 74 eb                                      blx #0x34424
0008bd3e  da f8 28 00                                      ldr.w r0, [sl, #0x28]
0008bd42  01 68                                            ldr r1, [r0]
0008bd44  8a 68                                            ldr r2, [r1, #8]
0008bd46  21 46                                            mov r1, r4
0008bd48  90 47                                            blx r2
0008bd4a  30 68                                            ldr r0, [r6]
0008bd4c  46 a1                                            adr r1, #0x118
0008bd4e  a8 f7 6a eb                                      blx #0x34424
0008bd52  da f8 18 00                                      ldr.w r0, [sl, #0x18]
0008bd56  03 28                                            cmp r0, #3
0008bd58  25 d1                                            bne #0x8bda6
0008bd5a  30 68                                            ldr r0, [r6]
0008bd5c  b8 f1 03 0f                                      cmp.w r8, #3
0008bd60  02 d1                                            bne #0x8bd68
0008bd62  4c 49                                            ldr r1, [pc, #0x130]
0008bd64  79 44                                            add r1, pc
0008bd66  01 e0                                            b #0x8bd6c
0008bd68  49 49                                            ldr r1, [pc, #0x124]
0008bd6a  79 44                                            add r1, pc
0008bd6c  a8 f7 5a eb                                      blx #0x34424
0008bd70  da f8 28 00                                      ldr.w r0, [sl, #0x28]
0008bd74  01 68                                            ldr r1, [r0]
0008bd76  8a 68                                            ldr r2, [r1, #8]
0008bd78  21 46                                            mov r1, r4
0008bd7a  90 47                                            blx r2
0008bd7c  30 68                                            ldr r0, [r6]
0008bd7e  b8 f1 03 0f                                      cmp.w r8, #3
0008bd82  02 d1                                            bne #0x8bd8a
0008bd84  45 49                                            ldr r1, [pc, #0x114]
0008bd86  79 44                                            add r1, pc
0008bd88  01 e0                                            b #0x8bd8e
0008bd8a  43 49                                            ldr r1, [pc, #0x10c]
0008bd8c  79 44                                            add r1, pc
0008bd8e  a8 f7 4a eb                                      blx #0x34424
0008bd92  da f8 2c 00                                      ldr.w r0, [sl, #0x2c]
0008bd96  01 68                                            ldr r1, [r0]
0008bd98  8a 68                                            ldr r2, [r1, #8]
0008bd9a  21 46                                            mov r1, r4
0008bd9c  90 47                                            blx r2
0008bd9e  30 68                                            ldr r0, [r6]
0008bda0  3f a1                                            adr r1, #0xfc
0008bda2  a8 f7 40 eb                                      blx #0x34424
0008bda6  30 68                                            ldr r0, [r6]
0008bda8  2f a1                                            adr r1, #0xbc
0008bdaa  bd e8 00 07                                      pop.w {r8, sb, sl}
0008bdae  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008bdb2  24 f0 e9 bf                                      b.w #0xb0d88
0008bdb6  00 bf                                            nop
0008bdb8  01 00                                            movs r1, r0
0008bdba  00 00                                            movs r0, r0
0008bdbc  02 00                                            movs r2, r0
0008bdbe  00 00                                            movs r0, r0
0008bdc0  03 00                                            movs r3, r0
0008bdc2  00 00                                            movs r0, r0
0008bdc4  03 00                                            movs r3, r0
0008bdc6  00 00                                            movs r0, r0
0008bdc8  02 00                                            movs r2, r0
0008bdca  00 00                                            movs r0, r0
0008bdcc  02 00                                            movs r2, r0
0008bdce  00 00                                            movs r0, r0
0008bdd0  02 00                                            movs r2, r0
0008bdd2  00 00                                            movs r0, r0
0008bdd4  c8 55                                            strb r0, [r1, r7]
0008bdd6  03 00                                            movs r3, r0
0008bdd8  2e 73                                            strb r6, [r5, #0xc]
0008bdda  61 6d                                            ldr r1, [r4, #0x54]
0008bddc  70 6c                                            ldr r0, [r6, #0x44]
0008bdde  65 5f                                            ldrsh r5, [r4, r5]
0008bde0  63 6f                                            ldr r3, [r4, #0x74]
0008bde2  6d 70                                            strb r5, [r5, #1]
0008bde4  61 72                                            strb r1, [r4, #9]
0008bde6  65 28                                            cmp r0, #0x65
0008bde8  5f 6d                                            ldr r7, [r3, #0x54]
0008bdea  74 6c                                            ldr r4, [r6, #0x44]
0008bdec  5f 78                                            ldrb r7, [r3, #1]
0008bdee  6c 5f                                            ldrsh r4, [r5, r5]
0008bdf0  73 68                                            ldr r3, [r6, #4]
0008bdf2  61 64                                            str r1, [r4, #0x44]
0008bdf4  6f 77                                            strb r7, [r5, #0x1d]
0008bdf6  5f 73                                            strb r7, [r3, #0xd]
0008bdf8  61 6d                                            ldr r1, [r4, #0x54]
0008bdfa  70 6c                                            ldr r0, [r6, #0x44]
0008bdfc  65 72                                            strb r5, [r4, #9]
0008bdfe  00 00                                            movs r0, r0
0008be00  2c 20                                            movs r0, #0x2c
0008be02  00 00                                            movs r0, r0
0008be04  28 66                                            str r0, [r5, #0x60]
0008be06  6c 6f                                            ldr r4, [r5, #0x74]
0008be08  61 74                                            strb r1, [r4, #0x11]
0008be0a  32 29                                            cmp r1, #0x32
0008be0c  28 00                                            movs r0, r5
0008be0e  00 00                                            movs r0, r0
0008be10  28 66                                            str r0, [r5, #0x60]
0008be12  6c 6f                                            ldr r4, [r5, #0x74]
0008be14  61 74                                            strb r1, [r4, #0x11]
0008be16  33 29                                            cmp r1, #0x33
0008be18  28 00                                            movs r0, r5
0008be1a  00 00                                            movs r0, r0
0008be1c  29 2e                                            cmp r6, #0x29
0008be1e  78 79                                            ldrb r0, [r7, #5]
0008be20  2c 20                                            movs r0, #0x2c
0008be22  28 66                                            str r0, [r5, #0x60]
0008be24  6c 6f                                            ldr r4, [r5, #0x74]
0008be26  61 74                                            strb r1, [r4, #0x11]
0008be28  29 28                                            cmp r0, #0x29
0008be2a  00 00                                            movs r0, r0
0008be2c  29 2e                                            cmp r6, #0x29
0008be2e  78 79                                            ldrb r0, [r7, #5]
0008be30  7a 2c                                            cmp r4, #0x7a
0008be32  20 28                                            cmp r0, #0x20
0008be34  00 00                                            movs r0, r0
0008be36  00 00                                            movs r0, r0
0008be38  29 2e                                            cmp r6, #0x29
0008be3a  7a 00                                            lsls r2, r7, #1
0008be3c  29 2e                                            cmp r6, #0x29
0008be3e  77 00                                            lsls r7, r6, #1
0008be40  ea 5a                                            ldrh r2, [r5, r3]
0008be42  03 00                                            movs r3, r0
0008be44  29 2e                                            cmp r6, #0x29
0008be46  77 2c                                            cmp r4, #0x77
0008be48  20 28                                            cmp r0, #0x20
0008be4a  66 6c                                            ldr r6, [r4, #0x44]
0008be4c  6f 61                                            str r7, [r5, #0x14]
0008be4e  74 29                                            cmp r1, #0x74
0008be50  28 00                                            movs r0, r5
0008be52  00 00                                            movs r0, r0
0008be54  29 2e                                            cmp r6, #0x29
0008be56  7a 20                                            movs r0, #0x7a
0008be58  2f 20                                            movs r0, #0x2f
0008be5a  28 66                                            str r0, [r5, #0x60]
0008be5c  6c 6f                                            ldr r4, [r5, #0x74]
0008be5e  61 74                                            strb r1, [r4, #0x11]
0008be60  29 28                                            cmp r0, #0x29
0008be62  00 00                                            movs r0, r0
0008be64  ab 56                                            ldrsb r3, [r5, r2]
0008be66  03 00                                            movs r3, r0
0008be68  29 00                                            movs r1, r5
0008be6a  00 00                                            movs r0, r0
0008be6c  62 5b                                            ldrh r2, [r4, r5]
0008be6e  03 00                                            movs r3, r0
0008be70  55 5b                                            ldrh r5, [r2, r5]
0008be72  03 00                                            movs r3, r0
0008be74  60 5b                                            ldrh r0, [r4, r5]
0008be76  03 00                                            movs r3, r0
0008be78  4b 5b                                            ldrh r3, [r1, r5]
0008be7a  03 00                                            movs r3, r0
0008be7c  4c 5b                                            ldrh r4, [r1, r5]
0008be7e  03 00                                            movs r3, r0
0008be80  29 2e                                            cmp r6, #0x29
0008be82  7a 29                                            cmp r1, #0x7a
0008be84  00 00                                            movs r0, r0
0008be86  00 00                                            movs r0, r0
0008be88  4a 55                                            strb r2, [r1, r5]
0008be8a  03 00                                            movs r3, r0
0008be8c  2c 55                                            strb r4, [r5, r4]
0008be8e  03 00                                            movs r3, r0
0008be90  1c 55                                            strb r4, [r3, r4]
0008be92  03 00                                            movs r3, r0
0008be94  09 55                                            strb r1, [r1, r4]
0008be96  03 00                                            movs r3, r0
0008be98  1e 55                                            strb r6, [r3, r4]
0008be9a  03 00                                            movs r3, r0
0008be9c  17 55                                            strb r7, [r2, r4]
0008be9e  03 00                                            movs r3, r0
0008bea0  29 29                                            cmp r1, #0x29
0008bea2  00 00                                            movs r0, r0

; FUNCTION 0x0008bea4, declared_size=348, range_size=348, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor5visitEP10ir_swizzle
; demangled: ir_print_metal_visitor::visit(ir_swizzle*)
; decoder-mode: thumb
0008bea4  f0 b5                                            push {r4, r5, r6, r7, lr}
0008bea6  03 af                                            add r7, sp, #0xc
0008bea8  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
0008beac  85 b0                                            sub sp, #0x14
0008beae  81 46                                            mov sb, r0
0008beb0  49 48                                            ldr r0, [pc, #0x124]
0008beb2  0d 46                                            mov r5, r1
0008beb4  49 4a                                            ldr r2, [pc, #0x124]
0008beb6  78 44                                            add r0, pc
0008beb8  49 4b                                            ldr r3, [pc, #0x124]
0008beba  7a 44                                            add r2, pc
0008bebc  00 24                                            movs r4, #0
0008bebe  00 68                                            ldr r0, [r0]
0008bec0  7b 44                                            add r3, pc
0008bec2  12 68                                            ldr r2, [r2]
0008bec4  1b 68                                            ldr r3, [r3]
0008bec6  00 68                                            ldr r0, [r0]
0008bec8  04 90                                            str r0, [sp, #0x10]
0008beca  a9 8b                                            ldrh r1, [r5, #0x1c]
0008becc  16 68                                            ldr r6, [r2]
0008bece  01 f0 03 08                                      and r8, r1, #3
0008bed2  cd f8 00 80                                      str.w r8, [sp]
0008bed6  c1 f3 81 00                                      ubfx r0, r1, #2, #2
0008beda  01 90                                            str r0, [sp, #4]
0008bedc  c1 f3 01 10                                      ubfx r0, r1, #4, #2
0008bee0  02 90                                            str r0, [sp, #8]
0008bee2  c1 f3 81 10                                      ubfx r0, r1, #6, #2
0008bee6  03 90                                            str r0, [sp, #0xc]
0008bee8  a8 69                                            ldr r0, [r5, #0x18]
0008beea  d3 f8 00 b0                                      ldr.w fp, [r3]
0008beee  00 23                                            movs r3, #0
0008bef0  02 69                                            ldr r2, [r0, #0x10]
0008bef2  b2 42                                            cmp r2, r6
0008bef4  18 bf                                            it ne
0008bef6  01 24                                            movne r4, #1
0008bef8  5a 45                                            cmp r2, fp
0008befa  18 bf                                            it ne
0008befc  01 23                                            movne r3, #1
0008befe  23 42                                            tst r3, r4
0008bf00  1c d1                                            bne #0x8bf3c
0008bf02  01 f4 e0 61                                      and r1, r1, #0x700
0008bf06  b1 f5 80 7f                                      cmp.w r1, #0x100
0008bf0a  17 d0                                            beq #0x8bf3c
0008bf0c  28 46                                            mov r0, r5
0008bf0e  44 46                                            mov r4, r8
0008bf10  d5 f8 10 80                                      ldr.w r8, [r5, #0x10]
0008bf14  d9 f8 10 a0                                      ldr.w sl, [sb, #0x10]
0008bf18  a6 f7 c6 ee                                      blx #0x32ca8
0008bf1c  02 46                                            mov r2, r0
0008bf1e  02 2a                                            cmp r2, #2
0008bf20  41 46                                            mov r1, r8
0008bf22  08 bf                                            it eq
0008bf24  01 22                                            moveq r2, #1
0008bf26  50 46                                            mov r0, sl
0008bf28  01 23                                            movs r3, #1
0008bf2a  a0 46                                            mov r8, r4
0008bf2c  ff f7 be fb                                      bl #0x8b6ac
0008bf30  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
0008bf34  2b a1                                            adr r1, #0xac
0008bf36  a8 f7 76 ea                                      blx #0x34424
0008bf3a  a8 69                                            ldr r0, [r5, #0x18]
0008bf3c  01 68                                            ldr r1, [r0]
0008bf3e  8a 68                                            ldr r2, [r1, #8]
0008bf40  49 46                                            mov r1, sb
0008bf42  90 47                                            blx r2
0008bf44  a8 69                                            ldr r0, [r5, #0x18]
0008bf46  00 69                                            ldr r0, [r0, #0x10]
0008bf48  b0 42                                            cmp r0, r6
0008bf4a  18 bf                                            it ne
0008bf4c  58 45                                            cmpne r0, fp
0008bf4e  0b d1                                            bne #0x8bf68
0008bf50  a8 8b                                            ldrh r0, [r5, #0x1c]
0008bf52  00 f4 e0 60                                      and r0, r0, #0x700
0008bf56  b0 f5 80 7f                                      cmp.w r0, #0x100
0008bf5a  2f d0                                            beq #0x8bfbc
0008bf5c  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
0008bf60  25 a1                                            adr r1, #0x94
0008bf62  a8 f7 60 ea                                      blx #0x34424
0008bf66  29 e0                                            b #0x8bfbc
0008bf68  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
0008bf6c  1e a1                                            adr r1, #0x78
0008bf6e  a8 f7 5a ea                                      blx #0x34424
0008bf72  68 7f                                            ldrb r0, [r5, #0x1d]
0008bf74  40 07                                            lsls r0, r0, #0x1d
0008bf76  21 d0                                            beq #0x8bfbc
0008bf78  1c 49                                            ldr r1, [pc, #0x70]
0008bf7a  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
0008bf7e  79 44                                            add r1, pc
0008bf80  11 f8 08 20                                      ldrb.w r2, [r1, r8]
0008bf84  1a a1                                            adr r1, #0x68
0008bf86  a8 f7 4e ea                                      blx #0x34424
0008bf8a  68 7f                                            ldrb r0, [r5, #0x1d]
0008bf8c  10 f0 06 0f                                      tst.w r0, #6
0008bf90  14 d0                                            beq #0x8bfbc
0008bf92  df f8 60 80                                      ldr.w r8, [pc, #0x60]
0008bf96  16 a6                                            adr r6, #0x58
0008bf98  01 24                                            movs r4, #1
0008bf9a  ea 46                                            mov sl, sp
0008bf9c  f8 44                                            add r8, pc
0008bf9e  5a f8 24 10                                      ldr.w r1, [sl, r4, lsl #2]
0008bfa2  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
0008bfa6  18 f8 01 20                                      ldrb.w r2, [r8, r1]
0008bfaa  31 46                                            mov r1, r6
0008bfac  a8 f7 3a ea                                      blx #0x34424
0008bfb0  68 7f                                            ldrb r0, [r5, #0x1d]
0008bfb2  01 34                                            adds r4, #1
0008bfb4  00 f0 07 00                                      and r0, r0, #7
0008bfb8  84 42                                            cmp r4, r0
0008bfba  f0 d3                                            blo #0x8bf9e
0008bfbc  0f 48                                            ldr r0, [pc, #0x3c]
0008bfbe  04 99                                            ldr r1, [sp, #0x10]
0008bfc0  78 44                                            add r0, pc
0008bfc2  00 68                                            ldr r0, [r0]
0008bfc4  00 68                                            ldr r0, [r0]
0008bfc6  40 1a                                            subs r0, r0, r1
0008bfc8  02 bf                                            ittt eq
0008bfca  05 b0                                            addeq sp, #0x14
0008bfcc  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
0008bfd0  f0 bd                                            popeq {r4, r5, r6, r7, pc}
0008bfd2  a6 f7 46 e8                                      blx #0x32060
0008bfd6  00 bf                                            nop
0008bfd8  fe 05                                            lsls r6, r7, #0x17
0008bfda  05 00                                            movs r5, r0
0008bfdc  e2 06                                            lsls r2, r4, #0x1b
0008bfde  05 00                                            movs r5, r0
0008bfe0  b4 06                                            lsls r4, r6, #0x1a
0008bfe2  05 00                                            movs r5, r0
0008bfe4  28 00                                            movs r0, r5
0008bfe6  00 00                                            movs r0, r0
0008bfe8  2e 00                                            movs r6, r5
0008bfea  00 00                                            movs r0, r0
0008bfec  3e 4b                                            ldr r3, [pc, #0xf8]
0008bfee  03 00                                            movs r3, r0
0008bff0  25 63                                            str r5, [r4, #0x30]
0008bff2  00 00                                            movs r0, r0
0008bff4  20 4b                                            ldr r3, [pc, #0x80]
0008bff6  03 00                                            movs r3, r0
0008bff8  29 00                                            movs r1, r5
0008bffa  00 00                                            movs r0, r0
0008bffc  f4 04                                            lsls r4, r6, #0x13
0008bffe  05 00                                            movs r5, r0

; FUNCTION 0x0008c000, declared_size=40, range_size=40, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor5visitEP23ir_dereference_variable
; demangled: ir_print_metal_visitor::visit(ir_dereference_variable*)
; decoder-mode: thumb
0008c000  b0 b5                                            push {r4, r5, r7, lr}
0008c002  02 af                                            add r7, sp, #8
0008c004  04 46                                            mov r4, r0
0008c006  08 68                                            ldr r0, [r1]
0008c008  02 6a                                            ldr r2, [r0, #0x20]
0008c00a  08 46                                            mov r0, r1
0008c00c  90 47                                            blx r2
0008c00e  05 46                                            mov r5, r0
0008c010  20 69                                            ldr r0, [r4, #0x10]
0008c012  94 f8 29 20                                      ldrb.w r2, [r4, #0x29]
0008c016  29 46                                            mov r1, r5
0008c018  00 f0 06 f8                                      bl #0x8c028
0008c01c  20 46                                            mov r0, r4
0008c01e  29 46                                            mov r1, r5
0008c020  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
0008c024  24 f0 d0 be                                      b.w #0xb0dc8

; FUNCTION 0x0008c0c4, declared_size=56, range_size=56, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor5visitEP20ir_dereference_array
; demangled: ir_print_metal_visitor::visit(ir_dereference_array*)
; decoder-mode: thumb
0008c0c4  b0 b5                                            push {r4, r5, r7, lr}
0008c0c6  02 af                                            add r7, sp, #8
0008c0c8  0c 46                                            mov r4, r1
0008c0ca  05 46                                            mov r5, r0
0008c0cc  a0 69                                            ldr r0, [r4, #0x18]
0008c0ce  01 68                                            ldr r1, [r0]
0008c0d0  8a 68                                            ldr r2, [r1, #8]
0008c0d2  29 46                                            mov r1, r5
0008c0d4  90 47                                            blx r2
0008c0d6  28 69                                            ldr r0, [r5, #0x10]
0008c0d8  06 a1                                            adr r1, #0x18
0008c0da  a8 f7 a4 e9                                      blx #0x34424
0008c0de  e0 69                                            ldr r0, [r4, #0x1c]
0008c0e0  01 68                                            ldr r1, [r0]
0008c0e2  8a 68                                            ldr r2, [r1, #8]
0008c0e4  29 46                                            mov r1, r5
0008c0e6  90 47                                            blx r2
0008c0e8  28 69                                            ldr r0, [r5, #0x10]
0008c0ea  03 a1                                            adr r1, #0xc
0008c0ec  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
0008c0f0  24 f0 4a be                                      b.w #0xb0d88
0008c0f4  5b 00                                            lsls r3, r3, #1
0008c0f6  00 00                                            movs r0, r0
0008c0f8  5d 00                                            lsls r5, r3, #1
0008c0fa  00 00                                            movs r0, r0

; FUNCTION 0x0008c0fc, declared_size=36, range_size=36, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor5visitEP21ir_dereference_record
; demangled: ir_print_metal_visitor::visit(ir_dereference_record*)
; decoder-mode: thumb
0008c0fc  b0 b5                                            push {r4, r5, r7, lr}
0008c0fe  02 af                                            add r7, sp, #8
0008c100  0c 46                                            mov r4, r1
0008c102  05 46                                            mov r5, r0
0008c104  a0 69                                            ldr r0, [r4, #0x18]
0008c106  01 68                                            ldr r1, [r0]
0008c108  8a 68                                            ldr r2, [r1, #8]
0008c10a  29 46                                            mov r1, r5
0008c10c  90 47                                            blx r2
0008c10e  e2 69                                            ldr r2, [r4, #0x1c]
0008c110  02 a1                                            adr r1, #8
0008c112  28 69                                            ldr r0, [r5, #0x10]
0008c114  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
0008c118  24 f0 36 be                                      b.w #0xb0d88
0008c11c  2e 25                                            movs r5, #0x2e
0008c11e  73 00                                            lsls r3, r6, #1

; FUNCTION 0x0008c120, declared_size=648, range_size=648, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor20emit_assignment_partEP14ir_dereferenceP9ir_rvaluejS3_
; demangled: ir_print_metal_visitor::emit_assignment_part(ir_dereference*, ir_rvalue*, unsigned int, ir_rvalue*)
; decoder-mode: thumb
0008c120  f0 b5                                            push {r4, r5, r6, r7, lr}
0008c122  03 af                                            add r7, sp, #0xc
0008c124  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
0008c128  85 b0                                            sub sp, #0x14
0008c12a  04 46                                            mov r4, r0
0008c12c  8f 48                                            ldr r0, [pc, #0x23c]
0008c12e  89 46                                            mov sb, r1
0008c130  93 46                                            mov fp, r2
0008c132  78 44                                            add r0, pc
0008c134  21 46                                            mov r1, r4
0008c136  9a 46                                            mov sl, r3
0008c138  00 68                                            ldr r0, [r0]
0008c13a  00 68                                            ldr r0, [r0]
0008c13c  04 90                                            str r0, [sp, #0x10]
0008c13e  01 20                                            movs r0, #1
0008c140  94 f8 29 50                                      ldrb.w r5, [r4, #0x29]
0008c144  84 f8 29 00                                      strb.w r0, [r4, #0x29]
0008c148  d9 f8 00 00                                      ldr.w r0, [sb]
0008c14c  82 68                                            ldr r2, [r0, #8]
0008c14e  48 46                                            mov r0, sb
0008c150  90 47                                            blx r2
0008c152  84 f8 29 50                                      strb.w r5, [r4, #0x29]
0008c156  d7 f8 08 80                                      ldr.w r8, [r7, #8]
0008c15a  d9 f8 10 50                                      ldr.w r5, [sb, #0x10]
0008c15e  b8 f1 00 0f                                      cmp.w r8, #0
0008c162  10 d0                                            beq #0x8c186
0008c164  d8 f8 0c 00                                      ldr.w r0, [r8, #0xc]
0008c168  03 28                                            cmp r0, #3
0008c16a  3d d1                                            bne #0x8c1e8
0008c16c  40 46                                            mov r0, r8
0008c16e  00 21                                            movs r1, #0
0008c170  a6 f7 0e ec                                      blx #0x32990
0008c174  81 49                                            ldr r1, [pc, #0x204]
0008c176  23 69                                            ldr r3, [r4, #0x10]
0008c178  79 44                                            add r1, pc
0008c17a  0a 5c                                            ldrb r2, [r1, r0]
0008c17c  80 a1                                            adr r1, #0x200
0008c17e  18 46                                            mov r0, r3
0008c180  a8 f7 50 e9                                      blx #0x34424
0008c184  3e e0                                            b #0x8c204
0008c186  28 46                                            mov r0, r5
0008c188  01 90                                            str r0, [sp, #4]
0008c18a  28 89                                            ldrh r0, [r5, #8]
0008c18c  00 25                                            movs r5, #0
0008c18e  db f8 10 10                                      ldr.w r1, [fp, #0x10]
0008c192  00 91                                            str r1, [sp]
0008c194  00 f4 c0 41                                      and r1, r0, #0x6000
0008c198  b5 eb 51 3f                                      cmp.w r5, r1, lsr #13
0008c19c  4b d1                                            bne #0x8c236
0008c19e  c0 f3 42 20                                      ubfx r0, r0, #9, #3
0008c1a2  02 28                                            cmp r0, #2
0008c1a4  c0 f0 df 80                                      blo.w #0x8c366
0008c1a8  81 b2                                            uxth r1, r0
0008c1aa  01 20                                            movs r0, #1
0008c1ac  00 fa 01 f1                                      lsl.w r1, r0, r1
0008c1b0  a7 f1 25 02                                      sub.w r2, r7, #0x25
0008c1b4  01 39                                            subs r1, #1
0008c1b6  00 25                                            movs r5, #0
0008c1b8  51 45                                            cmp r1, sl
0008c1ba  3e d0                                            beq #0x8c23a
0008c1bc  6c 49                                            ldr r1, [pc, #0x1b0]
0008c1be  00 26                                            movs r6, #0
0008c1c0  79 44                                            add r1, pc
0008c1c2  00 fa 06 f3                                      lsl.w r3, r0, r6
0008c1c6  13 ea 0a 0f                                      tst.w r3, sl
0008c1ca  1e bf                                            ittt ne
0008c1cc  8b 5d                                            ldrbne r3, [r1, r6]
0008c1ce  53 55                                            strbne r3, [r2, r5]
0008c1d0  01 35                                            addne r5, #1
0008c1d2  01 36                                            adds r6, #1
0008c1d4  04 2e                                            cmp r6, #4
0008c1d6  f4 d1                                            bne #0x8c1c2
0008c1d8  01 98                                            ldr r0, [sp, #4]
0008c1da  29 46                                            mov r1, r5
0008c1dc  01 22                                            movs r2, #1
0008c1de  40 68                                            ldr r0, [r0, #4]
0008c1e0  a6 f7 a0 eb                                      blx #0x32924
0008c1e4  01 90                                            str r0, [sp, #4]
0008c1e6  26 e0                                            b #0x8c236
0008c1e8  20 69                                            ldr r0, [r4, #0x10]
0008c1ea  62 a1                                            adr r1, #0x188
0008c1ec  a8 f7 1a e9                                      blx #0x34424
0008c1f0  d8 f8 00 00                                      ldr.w r0, [r8]
0008c1f4  21 46                                            mov r1, r4
0008c1f6  82 68                                            ldr r2, [r0, #8]
0008c1f8  40 46                                            mov r0, r8
0008c1fa  90 47                                            blx r2
0008c1fc  20 69                                            ldr r0, [r4, #0x10]
0008c1fe  5e a1                                            adr r1, #0x178
0008c200  a8 f7 10 e9                                      blx #0x34424
0008c204  28 89                                            ldrh r0, [r5, #8]
0008c206  00 22                                            movs r2, #0
0008c208  00 f4 c0 41                                      and r1, r0, #0x6000
0008c20c  b2 eb 51 3f                                      cmp.w r2, r1, lsr #13
0008c210  0c d1                                            bne #0x8c22c
0008c212  00 f4 40 60                                      and r0, r0, #0xc00
0008c216  80 b2                                            uxth r0, r0
0008c218  b0 f5 00 7f                                      cmp.w r0, #0x200
0008c21c  06 d9                                            bls #0x8c22c
0008c21e  68 68                                            ldr r0, [r5, #4]
0008c220  01 21                                            movs r1, #1
0008c222  01 22                                            movs r2, #1
0008c224  a6 f7 7e eb                                      blx #0x32924
0008c228  01 90                                            str r0, [sp, #4]
0008c22a  00 e0                                            b #0x8c22e
0008c22c  01 95                                            str r5, [sp, #4]
0008c22e  db f8 10 00                                      ldr.w r0, [fp, #0x10]
0008c232  00 25                                            movs r5, #0
0008c234  00 90                                            str r0, [sp]
0008c236  a7 f1 25 02                                      sub.w r2, r7, #0x25
0008c23a  a7 f1 25 00                                      sub.w r0, r7, #0x25
0008c23e  00 26                                            movs r6, #0
0008c240  46 55                                            strb r6, [r0, r5]
0008c242  17 f8 25 0c                                      ldrb r0, [r7, #-0x25]
0008c246  30 b1                                            cbz r0, #0x8c256
0008c248  20 69                                            ldr r0, [r4, #0x10]
0008c24a  4e a1                                            adr r1, #0x138
0008c24c  92 46                                            mov sl, r2
0008c24e  a8 f7 ea e8                                      blx #0x34424
0008c252  01 25                                            movs r5, #1
0008c254  01 e0                                            b #0x8c25a
0008c256  92 46                                            mov sl, r2
0008c258  00 25                                            movs r5, #0
0008c25a  20 69                                            ldr r0, [r4, #0x10]
0008c25c  4a a1                                            adr r1, #0x128
0008c25e  a8 f7 e2 e8                                      blx #0x34424
0008c262  dd e9 00 10                                      ldrd r1, r0, [sp]
0008c266  88 42                                            cmp r0, r1
0008c268  4f f0 00 00                                      mov.w r0, #0
0008c26c  18 bf                                            it ne
0008c26e  01 20                                            movne r0, #1
0008c270  b8 f1 00 0f                                      cmp.w r8, #0
0008c274  08 bf                                            it eq
0008c276  01 26                                            moveq r6, #1
0008c278  d9 f8 14 20                                      ldr.w r2, [sb, #0x14]
0008c27c  30 40                                            ands r0, r6
0008c27e  5e 46                                            mov r6, fp
0008c280  71 69                                            ldr r1, [r6, #0x14]
0008c282  03 29                                            cmp r1, #3
0008c284  08 bf                                            it eq
0008c286  00 21                                            moveq r1, #0
0008c288  02 29                                            cmp r1, #2
0008c28a  08 bf                                            it eq
0008c28c  01 21                                            moveq r1, #1
0008c28e  03 2a                                            cmp r2, #3
0008c290  08 bf                                            it eq
0008c292  00 22                                            moveq r2, #0
0008c294  02 2a                                            cmp r2, #2
0008c296  08 bf                                            it eq
0008c298  01 22                                            moveq r2, #1
0008c29a  00 28                                            cmp r0, #0
0008c29c  08 bf                                            it eq
0008c29e  8a 42                                            cmpeq r2, r1
0008c2a0  10 d0                                            beq #0x8c2c4
0008c2a2  10 ea 05 08                                      ands.w r8, r0, r5
0008c2a6  13 d0                                            beq #0x8c2d0
0008c2a8  20 69                                            ldr r0, [r4, #0x10]
0008c2aa  3c a1                                            adr r1, #0xf0
0008c2ac  a8 f7 ba e8                                      blx #0x34424
0008c2b0  30 68                                            ldr r0, [r6]
0008c2b2  21 46                                            mov r1, r4
0008c2b4  82 68                                            ldr r2, [r0, #8]
0008c2b6  30 46                                            mov r0, r6
0008c2b8  90 47                                            blx r2
0008c2ba  20 69                                            ldr r0, [r4, #0x10]
0008c2bc  38 a1                                            adr r1, #0xe0
0008c2be  a8 f7 b2 e8                                      blx #0x34424
0008c2c2  3e e0                                            b #0x8c342
0008c2c4  30 68                                            ldr r0, [r6]
0008c2c6  21 46                                            mov r1, r4
0008c2c8  82 68                                            ldr r2, [r0, #8]
0008c2ca  30 46                                            mov r0, r6
0008c2cc  90 47                                            blx r2
0008c2ce  3d e0                                            b #0x8c34c
0008c2d0  dd f8 04 b0                                      ldr.w fp, [sp, #4]
0008c2d4  9b f8 09 00                                      ldrb.w r0, [fp, #9]
0008c2d8  10 f0 60 0f                                      tst.w r0, #0x60
0008c2dc  14 d0                                            beq #0x8c308
0008c2de  db f8 04 00                                      ldr.w r0, [fp, #4]
0008c2e2  02 28                                            cmp r0, #2
0008c2e4  10 d1                                            bne #0x8c308
0008c2e6  60 68                                            ldr r0, [r4, #4]
0008c2e8  90 f8 55 10                                      ldrb.w r1, [r0, #0x55]
0008c2ec  41 b9                                            cbnz r1, #0x8c300
0008c2ee  27 49                                            ldr r1, [pc, #0x9c]
0008c2f0  0c 30                                            adds r0, #0xc
0008c2f2  79 44                                            add r1, pc
0008c2f4  a8 f7 96 e8                                      blx #0x34424
0008c2f8  60 68                                            ldr r0, [r4, #4]
0008c2fa  01 21                                            movs r1, #1
0008c2fc  80 f8 55 10                                      strb.w r1, [r0, #0x55]
0008c300  20 69                                            ldr r0, [r4, #0x10]
0008c302  23 a1                                            adr r1, #0x8c
0008c304  a8 f7 8e e8                                      blx #0x34424
0008c308  48 46                                            mov r0, sb
0008c30a  25 69                                            ldr r5, [r4, #0x10]
0008c30c  a6 f7 cc ec                                      blx #0x32ca8
0008c310  02 46                                            mov r2, r0
0008c312  02 2a                                            cmp r2, #2
0008c314  08 bf                                            it eq
0008c316  01 22                                            moveq r2, #1
0008c318  28 46                                            mov r0, r5
0008c31a  59 46                                            mov r1, fp
0008c31c  01 23                                            movs r3, #1
0008c31e  ff f7 c5 f9                                      bl #0x8b6ac
0008c322  20 69                                            ldr r0, [r4, #0x10]
0008c324  1d a1                                            adr r1, #0x74
0008c326  a8 f7 7e e8                                      blx #0x34424
0008c32a  30 68                                            ldr r0, [r6]
0008c32c  21 46                                            mov r1, r4
0008c32e  82 68                                            ldr r2, [r0, #8]
0008c330  30 46                                            mov r0, r6
0008c332  90 47                                            blx r2
0008c334  20 69                                            ldr r0, [r4, #0x10]
0008c336  1a a1                                            adr r1, #0x68
0008c338  a8 f7 74 e8                                      blx #0x34424
0008c33c  b8 f1 00 0f                                      cmp.w r8, #0
0008c340  04 d0                                            beq #0x8c34c
0008c342  20 69                                            ldr r0, [r4, #0x10]
0008c344  0f a1                                            adr r1, #0x3c
0008c346  52 46                                            mov r2, sl
0008c348  a8 f7 6c e8                                      blx #0x34424
0008c34c  15 48                                            ldr r0, [pc, #0x54]
0008c34e  04 99                                            ldr r1, [sp, #0x10]
0008c350  78 44                                            add r0, pc
0008c352  00 68                                            ldr r0, [r0]
0008c354  00 68                                            ldr r0, [r0]
0008c356  40 1a                                            subs r0, r0, r1
0008c358  02 bf                                            ittt eq
0008c35a  05 b0                                            addeq sp, #0x14
0008c35c  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
0008c360  f0 bd                                            popeq {r4, r5, r6, r7, pc}
0008c362  a5 f7 7e ee                                      blx #0x32060
0008c366  00 25                                            movs r5, #0
0008c368  65 e7                                            b #0x8c236
0008c36a  00 bf                                            nop
0008c36c  82 03                                            lsls r2, r0, #0xe
0008c36e  05 00                                            movs r5, r0
0008c370  fc 48                                            ldr r0, [pc, #0x3f0]
0008c372  03 00                                            movs r3, r0
0008c374  5b 00                                            lsls r3, r3, #1
0008c376  00 00                                            movs r0, r0
0008c378  5d 00                                            lsls r5, r3, #1
0008c37a  00 00                                            movs r0, r0
0008c37c  44 49                                            ldr r1, [pc, #0x110]
0008c37e  03 00                                            movs r3, r0
0008c380  2e 25                                            movs r5, #0x2e
0008c382  63 00                                            lsls r3, r4, #1
0008c384  2e 25                                            movs r5, #0x2e
0008c386  73 00                                            lsls r3, r6, #1
0008c388  20 3d                                            subs r5, #0x20
0008c38a  20 00                                            movs r0, r4
0008c38c  c5 4f                                            ldr r7, [pc, #0x314]
0008c38e  03 00                                            movs r3, r0
0008c390  5f 78                                            ldrb r7, [r3, #1]
0008c392  6c 63                                            str r4, [r5, #0x34]
0008c394  61 73                                            strb r1, [r4, #0xd]
0008c396  74 5f                                            ldrsh r4, [r6, r5]
0008c398  00 00                                            movs r0, r0
0008c39a  00 00                                            movs r0, r0
0008c39c  28 00                                            movs r0, r5
0008c39e  00 00                                            movs r0, r0
0008c3a0  29 00                                            movs r1, r5
0008c3a2  00 00                                            movs r0, r0
0008c3a4  64 01                                            lsls r4, r4, #5
0008c3a6  05 00                                            movs r5, r0

; FUNCTION 0x0008c3a8, declared_size=536, range_size=536, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor5visitEP13ir_assignment
; demangled: ir_print_metal_visitor::visit(ir_assignment*)
; decoder-mode: thumb
0008c3a8  f0 b5                                            push {r4, r5, r6, r7, lr}
0008c3aa  03 af                                            add r7, sp, #0xc
0008c3ac  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0008c3b0  82 b0                                            sub sp, #8
0008c3b2  04 46                                            mov r4, r0
0008c3b4  88 46                                            mov r8, r1
0008c3b6  94 f8 28 00                                      ldrb.w r0, [r4, #0x28]
0008c3ba  00 b3                                            cbz r0, #0x8c3fe
0008c3bc  e0 69                                            ldr r0, [r4, #0x1c]
0008c3be  00 28                                            cmp r0, #0
0008c3c0  43 d0                                            beq #0x8c44a
0008c3c2  65 69                                            ldr r5, [r4, #0x14]
0008c3c4  0c 21                                            movs r1, #0xc
0008c3c6  a8 6a                                            ldr r0, [r5, #0x28]
0008c3c8  a6 f7 aa e9                                      blx #0x32720
0008c3cc  06 46                                            mov r6, r0
0008c3ce  75 48                                            ldr r0, [pc, #0x1d4]
0008c3d0  78 44                                            add r0, pc
0008c3d2  01 68                                            ldr r1, [r0]
0008c3d4  30 46                                            mov r0, r6
0008c3d6  a6 f7 94 ea                                      blx #0x32900
0008c3da  05 f1 0c 00                                      add.w r0, r5, #0xc
0008c3de  30 60                                            str r0, [r6]
0008c3e0  c6 f8 08 80                                      str.w r8, [r6, #8]
0008c3e4  70 a1                                            adr r1, #0x1c0
0008c3e6  28 69                                            ldr r0, [r5, #0x10]
0008c3e8  70 60                                            str r0, [r6, #4]
0008c3ea  06 60                                            str r6, [r0]
0008c3ec  2e 61                                            str r6, [r5, #0x10]
0008c3ee  20 69                                            ldr r0, [r4, #0x10]
0008c3f0  02 b0                                            add sp, #8
0008c3f2  5d f8 04 8b                                      ldr r8, [sp], #4
0008c3f6  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008c3fa  24 f0 c5 bc                                      b.w #0xb0d88
0008c3fe  40 46                                            mov r0, r8
0008c400  a7 f7 9e e9                                      blx #0x33740
0008c404  01 46                                            mov r1, r0
0008c406  00 29                                            cmp r1, #0
0008c408  d8 d0                                            beq #0x8c3bc
0008c40a  d8 f8 18 00                                      ldr.w r0, [r8, #0x18]
0008c40e  00 28                                            cmp r0, #0
0008c410  d4 d1                                            bne #0x8c3bc
0008c412  60 6a                                            ldr r0, [r4, #0x24]
0008c414  a8 f7 2a e8                                      blx #0x3446c
0008c418  00 28                                            cmp r0, #0
0008c41a  cf d0                                            beq #0x8c3bc
0008c41c  c1 6a                                            ldr r1, [r0, #0x2c]
0008c41e  01 29                                            cmp r1, #1
0008c420  cc d1                                            bne #0x8c3bc
0008c422  01 6a                                            ldr r1, [r0, #0x20]
0008c424  00 f1 24 02                                      add.w r2, r0, #0x24
0008c428  91 42                                            cmp r1, r2
0008c42a  1e bf                                            ittt ne
0008c42c  01 6b                                            ldrne r1, [r0, #0x30]
0008c42e  34 30                                            addne r0, #0x34
0008c430  81 42                                            cmpne r1, r0
0008c432  c3 d0                                            beq #0x8c3bc
0008c434  02 20                                            movs r0, #2
0008c436  09 68                                            ldr r1, [r1]
0008c438  01 38                                            subs r0, #1
0008c43a  00 29                                            cmp r1, #0
0008c43c  fb d1                                            bne #0x8c436
0008c43e  00 28                                            cmp r0, #0
0008c440  bc d1                                            bne #0x8c3bc
0008c442  01 20                                            movs r0, #1
0008c444  84 f8 2a 00                                      strb.w r0, [r4, #0x2a]
0008c448  77 e0                                            b #0x8c53a
0008c44a  d8 f8 14 60                                      ldr.w r6, [r8, #0x14]
0008c44e  00 21                                            movs r1, #0
0008c450  00 22                                            movs r2, #0
0008c452  00 2e                                            cmp r6, #0
0008c454  f0 68                                            ldr r0, [r6, #0xc]
0008c456  08 bf                                            it eq
0008c458  01 22                                            moveq r2, #1
0008c45a  04 28                                            cmp r0, #4
0008c45c  18 bf                                            it ne
0008c45e  01 21                                            movne r1, #1
0008c460  11 43                                            orrs r1, r2
0008c462  04 bf                                            itt eq
0008c464  b0 69                                            ldreq r0, [r6, #0x18]
0008c466  67 28                                            cmpeq r0, #0x67
0008c468  0b d0                                            beq #0x8c482
0008c46a  d8 f8 18 00                                      ldr.w r0, [r8, #0x18]
0008c46e  a8 b3                                            cbz r0, #0x8c4dc
0008c470  01 68                                            ldr r1, [r0]
0008c472  8a 68                                            ldr r2, [r1, #8]
0008c474  21 46                                            mov r1, r4
0008c476  90 47                                            blx r2
0008c478  20 69                                            ldr r0, [r4, #0x10]
0008c47a  50 a1                                            adr r1, #0x140
0008c47c  a7 f7 d2 ef                                      blx #0x34424
0008c480  50 e0                                            b #0x8c524
0008c482  f2 69                                            ldr r2, [r6, #0x1c]
0008c484  00 23                                            movs r3, #0
0008c486  d8 f8 10 10                                      ldr.w r1, [r8, #0x10]
0008c48a  4f f0 00 0c                                      mov.w ip, #0
0008c48e  d0 68                                            ldr r0, [r2, #0xc]
0008c490  cd 68                                            ldr r5, [r1, #0xc]
0008c492  02 28                                            cmp r0, #2
0008c494  4f f0 00 00                                      mov.w r0, #0
0008c498  08 bf                                            it eq
0008c49a  13 46                                            moveq r3, r2
0008c49c  02 2d                                            cmp r5, #2
0008c49e  08 bf                                            it eq
0008c4a0  08 46                                            moveq r0, r1
0008c4a2  20 b1                                            cbz r0, #0x8c4ae
0008c4a4  1b b1                                            cbz r3, #0x8c4ae
0008c4a6  9b 69                                            ldr r3, [r3, #0x18]
0008c4a8  80 69                                            ldr r0, [r0, #0x18]
0008c4aa  98 42                                            cmp r0, r3
0008c4ac  49 d0                                            beq #0x8c542
0008c4ae  18 f8 1c 0f                                      ldrb r0, [r8, #0x1c]!
0008c4b2  cd f8 00 c0                                      str.w ip, [sp]
0008c4b6  00 f0 0f 03                                      and r3, r0, #0xf
0008c4ba  20 46                                            mov r0, r4
0008c4bc  a8 f7 c6 e8                                      blx #0x3464c
0008c4c0  20 69                                            ldr r0, [r4, #0x10]
0008c4c2  3a a1                                            adr r1, #0xe8
0008c4c4  a7 f7 ae ef                                      blx #0x34424
0008c4c8  58 f8 0c 1c                                      ldr r1, [r8, #-0xc]
0008c4cc  d6 e9 08 20                                      ldrd r2, r0, [r6, #0x20]
0008c4d0  98 f8 00 30                                      ldrb.w r3, [r8]
0008c4d4  00 90                                            str r0, [sp]
0008c4d6  03 f0 0f 03                                      and r3, r3, #0xf
0008c4da  2b e0                                            b #0x8c534
0008c4dc  11 bb                                            cbnz r1, #0x8c524
0008c4de  b0 69                                            ldr r0, [r6, #0x18]
0008c4e0  3e 28                                            cmp r0, #0x3e
0008c4e2  1b d1                                            bne #0x8c51c
0008c4e4  40 46                                            mov r0, r8
0008c4e6  a7 f7 2c e9                                      blx #0x33740
0008c4ea  01 46                                            mov r1, r0
0008c4ec  b1 b1                                            cbz r1, #0x8c51c
0008c4ee  d8 e9 04 03                                      ldrd r0, r3, [r8, #0x10]
0008c4f2  1b 69                                            ldr r3, [r3, #0x10]
0008c4f4  02 69                                            ldr r2, [r0, #0x10]
0008c4f6  9a 42                                            cmp r2, r3
0008c4f8  10 d1                                            bne #0x8c51c
0008c4fa  13 89                                            ldrh r3, [r2, #8]
0008c4fc  03 f4 60 63                                      and r3, r3, #0xe00
0008c500  b3 f5 00 7f                                      cmp.w r3, #0x200
0008c504  0a d1                                            bne #0x8c51c
0008c506  52 68                                            ldr r2, [r2, #4]
0008c508  03 2a                                            cmp r2, #3
0008c50a  07 d8                                            bhi #0x8c51c
0008c50c  f2 69                                            ldr r2, [r6, #0x1c]
0008c50e  2a b1                                            cbz r2, #0x8c51c
0008c510  d3 68                                            ldr r3, [r2, #0xc]
0008c512  02 2b                                            cmp r3, #2
0008c514  04 bf                                            itt eq
0008c516  92 69                                            ldreq r2, [r2, #0x18]
0008c518  91 42                                            cmpeq r1, r2
0008c51a  15 d0                                            beq #0x8c548
0008c51c  d8 f8 18 00                                      ldr.w r0, [r8, #0x18]
0008c520  00 28                                            cmp r0, #0
0008c522  a5 d1                                            bne #0x8c470
0008c524  d8 e9 04 12                                      ldrd r1, r2, [r8, #0x10]
0008c528  00 23                                            movs r3, #0
0008c52a  98 f8 1c 00                                      ldrb.w r0, [r8, #0x1c]
0008c52e  00 93                                            str r3, [sp]
0008c530  00 f0 0f 03                                      and r3, r0, #0xf
0008c534  20 46                                            mov r0, r4
0008c536  a8 f7 8a e8                                      blx #0x3464c
0008c53a  02 b0                                            add sp, #8
0008c53c  5d f8 04 8b                                      ldr r8, [sp], #4
0008c540  f0 bd                                            pop {r4, r5, r6, r7, pc}
0008c542  08 f1 1c 08                                      add.w r8, r8, #0x1c
0008c546  c1 e7                                            b #0x8c4cc
0008c548  36 6a                                            ldr r6, [r6, #0x20]
0008c54a  00 2e                                            cmp r6, #0
0008c54c  e6 d0                                            beq #0x8c51c
0008c54e  f1 68                                            ldr r1, [r6, #0xc]
0008c550  03 29                                            cmp r1, #3
0008c552  e3 d1                                            bne #0x8c51c
0008c554  01 21                                            movs r1, #1
0008c556  94 f8 29 50                                      ldrb.w r5, [r4, #0x29]
0008c55a  84 f8 29 10                                      strb.w r1, [r4, #0x29]
0008c55e  01 68                                            ldr r1, [r0]
0008c560  8a 68                                            ldr r2, [r1, #8]
0008c562  21 46                                            mov r1, r4
0008c564  90 47                                            blx r2
0008c566  84 f8 29 50                                      strb.w r5, [r4, #0x29]
0008c56a  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
0008c56e  00 69                                            ldr r0, [r0, #0x10]
0008c570  40 68                                            ldr r0, [r0, #4]
0008c572  01 28                                            cmp r0, #1
0008c574  08 dc                                            bgt #0x8c588
0008c576  30 68                                            ldr r0, [r6]
0008c578  c1 6a                                            ldr r1, [r0, #0x2c]
0008c57a  30 46                                            mov r0, r6
0008c57c  88 47                                            blx r1
0008c57e  01 28                                            cmp r0, #1
0008c580  02 d1                                            bne #0x8c588
0008c582  20 69                                            ldr r0, [r4, #0x10]
0008c584  0c a1                                            adr r1, #0x30
0008c586  33 e7                                            b #0x8c3f0
0008c588  20 69                                            ldr r0, [r4, #0x10]
0008c58a  09 a1                                            adr r1, #0x24
0008c58c  a7 f7 4a ef                                      blx #0x34424
0008c590  30 68                                            ldr r0, [r6]
0008c592  21 46                                            mov r1, r4
0008c594  82 68                                            ldr r2, [r0, #8]
0008c596  30 46                                            mov r0, r6
0008c598  02 b0                                            add sp, #8
0008c59a  5d f8 04 8b                                      ldr r8, [sp], #4
0008c59e  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008c5a2  10 47                                            bx r2
0008c5a4  68 01                                            lsls r0, r5, #5
0008c5a6  05 00                                            movs r5, r0
0008c5a8  2f 2f                                            cmp r7, #0x2f
0008c5aa  00 00                                            movs r0, r0
0008c5ac  3b 20                                            movs r0, #0x3b
0008c5ae  00 00                                            movs r0, r0
0008c5b0  20 2b                                            cmp r3, #0x20
0008c5b2  3d 20                                            movs r0, #0x3d
0008c5b4  00 00                                            movs r0, r0
0008c5b6  00 00                                            movs r0, r0
0008c5b8  2b 2b                                            cmp r3, #0x2b
0008c5ba  00 00                                            movs r0, r0
0008c5bc  20 00                                            movs r0, r4
0008c5be  00 00                                            movs r0, r0

; FUNCTION 0x0008c5c0, declared_size=616, range_size=616, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor5visitEP11ir_constant
; demangled: ir_print_metal_visitor::visit(ir_constant*)
; decoder-mode: thumb
0008c5c0  f0 b5                                            push {r4, r5, r6, r7, lr}
0008c5c2  03 af                                            add r7, sp, #0xc
0008c5c4  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
0008c5c8  83 b0                                            sub sp, #0xc
0008c5ca  89 46                                            mov sb, r1
0008c5cc  80 46                                            mov r8, r0
0008c5ce  d9 f8 10 60                                      ldr.w r6, [sb, #0x10]
0008c5d2  70 68                                            ldr r0, [r6, #4]
0008c5d4  09 28                                            cmp r0, #9
0008c5d6  18 bf                                            it ne
0008c5d8  07 28                                            cmpne r0, #7
0008c5da  32 d1                                            bne #0x8c642
0008c5dc  d8 f8 14 00                                      ldr.w r0, [r8, #0x14]
0008c5e0  49 46                                            mov r1, sb
0008c5e2  80 69                                            ldr r0, [r0, #0x18]
0008c5e4  a6 f7 84 e8                                      blx #0x326f0
0008c5e8  06 46                                            mov r6, r0
0008c5ea  fe b9                                            cbnz r6, #0x8c62c
0008c5ec  d8 f8 14 10                                      ldr.w r1, [r8, #0x14]
0008c5f0  d1 e9 05 20                                      ldrd r2, r0, [r1, #0x14]
0008c5f4  56 1c                                            adds r6, r2, #1
0008c5f6  4e 61                                            str r6, [r1, #0x14]
0008c5f8  4a 46                                            mov r2, sb
0008c5fa  31 46                                            mov r1, r6
0008c5fc  a6 f7 ae e8                                      blx #0x3275c
0008c600  d8 f8 14 50                                      ldr.w r5, [r8, #0x14]
0008c604  10 21                                            movs r1, #0x10
0008c606  a8 6a                                            ldr r0, [r5, #0x28]
0008c608  a6 f7 8a e8                                      blx #0x32720
0008c60c  04 46                                            mov r4, r0
0008c60e  78 48                                            ldr r0, [pc, #0x1e0]
0008c610  78 44                                            add r0, pc
0008c612  01 68                                            ldr r1, [r0]
0008c614  20 46                                            mov r0, r4
0008c616  a6 f7 74 e9                                      blx #0x32900
0008c61a  c4 e9 02 96                                      strd sb, r6, [r4, #8]
0008c61e  05 f1 20 00                                      add.w r0, r5, #0x20
0008c622  20 60                                            str r0, [r4]
0008c624  68 6a                                            ldr r0, [r5, #0x24]
0008c626  60 60                                            str r0, [r4, #4]
0008c628  04 60                                            str r4, [r0]
0008c62a  6c 62                                            str r4, [r5, #0x24]
0008c62c  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
0008c630  70 a1                                            adr r1, #0x1c0
0008c632  32 46                                            mov r2, r6
0008c634  03 b0                                            add sp, #0xc
0008c636  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
0008c63a  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008c63e  24 f0 a3 bb                                      b.w #0xb0d88
0008c642  71 48                                            ldr r0, [pc, #0x1c4]
0008c644  78 44                                            add r0, pc
0008c646  00 68                                            ldr r0, [r0]
0008c648  00 68                                            ldr r0, [r0]
0008c64a  86 42                                            cmp r6, r0
0008c64c  38 d0                                            beq #0x8c6c0
0008c64e  6f 48                                            ldr r0, [pc, #0x1bc]
0008c650  78 44                                            add r0, pc
0008c652  00 68                                            ldr r0, [r0]
0008c654  00 68                                            ldr r0, [r0]
0008c656  86 42                                            cmp r6, r0
0008c658  3d d0                                            beq #0x8c6d6
0008c65a  6d 48                                            ldr r0, [pc, #0x1b4]
0008c65c  78 44                                            add r0, pc
0008c65e  00 68                                            ldr r0, [r0]
0008c660  00 68                                            ldr r0, [r0]
0008c662  86 42                                            cmp r6, r0
0008c664  00 f0 be 80                                      beq.w #0x8c7e4
0008c668  30 46                                            mov r0, r6
0008c66a  a7 f7 aa ea                                      blx #0x33bc0
0008c66e  83 46                                            mov fp, r0
0008c670  48 46                                            mov r0, sb
0008c672  d8 f8 10 40                                      ldr.w r4, [r8, #0x10]
0008c676  a6 f7 18 eb                                      blx #0x32ca8
0008c67a  02 46                                            mov r2, r0
0008c67c  02 2a                                            cmp r2, #2
0008c67e  08 bf                                            it eq
0008c680  01 22                                            moveq r2, #1
0008c682  20 46                                            mov r0, r4
0008c684  31 46                                            mov r1, r6
0008c686  01 23                                            movs r3, #1
0008c688  ff f7 10 f8                                      bl #0x8b6ac
0008c68c  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
0008c690  60 a1                                            adr r1, #0x180
0008c692  a7 f7 c8 ee                                      blx #0x34424
0008c696  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
0008c69a  01 89                                            ldrh r1, [r0, #8]
0008c69c  11 f4 c0 4f                                      tst.w r1, #0x6000
0008c6a0  1f d0                                            beq #0x8c6e2
0008c6a2  40 68                                            ldr r0, [r0, #4]
0008c6a4  02 28                                            cmp r0, #2
0008c6a6  1c d1                                            bne #0x8c6e2
0008c6a8  c1 f3 42 21                                      ubfx r1, r1, #9, #3
0008c6ac  02 20                                            movs r0, #2
0008c6ae  01 22                                            movs r2, #1
0008c6b0  01 25                                            movs r5, #1
0008c6b2  a6 f7 38 e9                                      blx #0x32924
0008c6b6  02 90                                            str r0, [sp, #8]
0008c6b8  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
0008c6bc  01 89                                            ldrh r1, [r0, #8]
0008c6be  13 e0                                            b #0x8c6e8
0008c6c0  d9 f8 18 10                                      ldr.w r1, [sb, #0x18]
0008c6c4  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
0008c6c8  03 b0                                            add sp, #0xc
0008c6ca  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
0008c6ce  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008c6d2  24 f0 69 bb                                      b.w #0xb0da8
0008c6d6  d9 f8 18 20                                      ldr.w r2, [sb, #0x18]
0008c6da  51 a1                                            adr r1, #0x144
0008c6dc  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
0008c6e0  a8 e7                                            b #0x8c634
0008c6e2  00 20                                            movs r0, #0
0008c6e4  00 25                                            movs r5, #0
0008c6e6  02 90                                            str r0, [sp, #8]
0008c6e8  c1 f3 02 30                                      ubfx r0, r1, #0xc, #3
0008c6ec  c1 f3 42 21                                      ubfx r1, r1, #9, #3
0008c6f0  11 fb 00 f1                                      smulbb r1, r1, r0
0008c6f4  00 29                                            cmp r1, #0
0008c6f6  65 d0                                            beq #0x8c7c4
0008c6f8  09 f1 18 04                                      add.w r4, sb, #0x18
0008c6fc  0f f2 1c 1a                                      addw sl, pc, #0x11c
0008c700  01 21                                            movs r1, #1
0008c702  00 26                                            movs r6, #0
0008c704  01 95                                            str r5, [sp, #4]
0008c706  c9 07                                            lsls r1, r1, #0x1f
0008c708  10 d1                                            bne #0x8c72c
0008c70a  01 2d                                            cmp r5, #1
0008c70c  09 d1                                            bne #0x8c722
0008c70e  81 b2                                            uxth r1, r0
0008c710  30 46                                            mov r0, r6
0008c712  a5 f7 10 ec                                      blx #0x31f34
0008c716  21 b9                                            cbnz r1, #0x8c722
0008c718  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
0008c71c  3e a1                                            adr r1, #0xf8
0008c71e  a7 f7 82 ee                                      blx #0x34424
0008c722  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
0008c726  51 46                                            mov r1, sl
0008c728  a7 f7 7c ee                                      blx #0x34424
0008c72c  01 2d                                            cmp r5, #1
0008c72e  1e d1                                            bne #0x8c76e
0008c730  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
0008c734  00 89                                            ldrh r0, [r0, #8]
0008c736  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
0008c73a  30 46                                            mov r0, r6
0008c73c  a5 f7 fa eb                                      blx #0x31f34
0008c740  a9 b9                                            cbnz r1, #0x8c76e
0008c742  48 46                                            mov r0, sb
0008c744  25 46                                            mov r5, r4
0008c746  d8 f8 10 40                                      ldr.w r4, [r8, #0x10]
0008c74a  a6 f7 ae ea                                      blx #0x32ca8
0008c74e  02 46                                            mov r2, r0
0008c750  02 2a                                            cmp r2, #2
0008c752  20 46                                            mov r0, r4
0008c754  08 bf                                            it eq
0008c756  01 22                                            moveq r2, #1
0008c758  2c 46                                            mov r4, r5
0008c75a  dd e9 01 51                                      ldrd r5, r1, [sp, #4]
0008c75e  01 23                                            movs r3, #1
0008c760  fe f7 a4 ff                                      bl #0x8b6ac
0008c764  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
0008c768  2a a1                                            adr r1, #0xa8
0008c76a  a7 f7 5c ee                                      blx #0x34424
0008c76e  db f8 04 00                                      ldr.w r0, [fp, #4]
0008c772  03 28                                            cmp r0, #3
0008c774  19 d8                                            bhi #0x8c7aa
0008c776  df e8 00 f0                                      tbb [pc, r0]
0008c77a  02 08                                            lsrs r2, r0, #0x20
0008c77c  0b 12                                            asrs r3, r1, #8
0008c77e  54 f8 26 20                                      ldr.w r2, [r4, r6, lsl #2]
0008c782  28 a1                                            adr r1, #0xa0
0008c784  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
0008c788  0d e0                                            b #0x8c7a6
0008c78a  54 f8 26 20                                      ldr.w r2, [r4, r6, lsl #2]
0008c78e  07 e0                                            b #0x8c7a0
0008c790  54 f8 26 10                                      ldr.w r1, [r4, r6, lsl #2]
0008c794  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
0008c798  a7 f7 86 ee                                      blx #0x344a8
0008c79c  05 e0                                            b #0x8c7aa
0008c79e  a2 5d                                            ldrb r2, [r4, r6]
0008c7a0  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
0008c7a4  1e a1                                            adr r1, #0x78
0008c7a6  a7 f7 3e ee                                      blx #0x34424
0008c7aa  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
0008c7ae  01 36                                            adds r6, #1
0008c7b0  01 89                                            ldrh r1, [r0, #8]
0008c7b2  c1 f3 02 30                                      ubfx r0, r1, #0xc, #3
0008c7b6  c1 f3 42 21                                      ubfx r1, r1, #9, #3
0008c7ba  11 fb 00 f2                                      smulbb r2, r1, r0
0008c7be  00 21                                            movs r1, #0
0008c7c0  96 42                                            cmp r6, r2
0008c7c2  a0 d3                                            blo #0x8c706
0008c7c4  25 b1                                            cbz r5, #0x8c7d0
0008c7c6  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
0008c7ca  13 a1                                            adr r1, #0x4c
0008c7cc  a7 f7 2a ee                                      blx #0x34424
0008c7d0  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
0008c7d4  10 a1                                            adr r1, #0x40
0008c7d6  03 b0                                            add sp, #0xc
0008c7d8  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
0008c7dc  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008c7e0  24 f0 d2 ba                                      b.w #0xb0d88
0008c7e4  d9 f8 18 20                                      ldr.w r2, [sb, #0x18]
0008c7e8  0e a1                                            adr r1, #0x38
0008c7ea  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
0008c7ee  21 e7                                            b #0x8c634
0008c7f0  28 ff 04 00                                      vhadd.u32 d0, d8, d4
0008c7f4  5f 78                                            ldrb r7, [r3, #1]
0008c7f6  6c 61                                            str r4, [r5, #0x14]
0008c7f8  74 5f                                            ldrsh r4, [r6, r5]
0008c7fa  6d 74                                            strb r5, [r5, #0x11]
0008c7fc  6c 5f                                            ldrsh r4, [r5, r5]
0008c7fe  63 6f                                            ldr r3, [r4, #0x74]
0008c800  6e 73                                            strb r6, [r5, #0xd]
0008c802  74 25                                            movs r5, #0x74
0008c804  69 00                                            lsls r1, r5, #1
0008c806  00 00                                            movs r0, r0
0008c808  58 ff 04 00                                      vhadd.u16 d16, d8, d4
0008c80c  24 ff 04 00                                      vhadd.u32 d0, d4, d4
0008c810  1c ff 04 00                                      vhadd.u16 d0, d12, d4
0008c814  28 00                                            movs r0, r5
0008c816  00 00                                            movs r0, r0
0008c818  29 00                                            movs r1, r5
0008c81a  00 00                                            movs r0, r0
0008c81c  2c 20                                            movs r0, #0x2c
0008c81e  00 00                                            movs r0, r0
0008c820  25 64                                            str r5, [r4, #0x40]
0008c822  00 00                                            movs r0, r0
0008c824  25 75                                            strb r5, [r4, #0x14]
0008c826  00 00                                            movs r0, r0

; FUNCTION 0x0008c828, declared_size=228, range_size=228, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor5visitEP7ir_call
; demangled: ir_print_metal_visitor::visit(ir_call*)
; decoder-mode: thumb
0008c828  f0 b5                                            push {r4, r5, r6, r7, lr}
0008c82a  03 af                                            add r7, sp, #0xc
0008c82c  2d e9 00 0b                                      push.w {r8, sb, fp}
0008c830  04 46                                            mov r4, r0
0008c832  88 46                                            mov r8, r1
0008c834  e0 69                                            ldr r0, [r4, #0x1c]
0008c836  b8 b1                                            cbz r0, #0x8c868
0008c838  65 69                                            ldr r5, [r4, #0x14]
0008c83a  0c 21                                            movs r1, #0xc
0008c83c  a8 6a                                            ldr r0, [r5, #0x28]
0008c83e  a5 f7 70 ef                                      blx #0x32720
0008c842  06 46                                            mov r6, r0
0008c844  2b 48                                            ldr r0, [pc, #0xac]
0008c846  78 44                                            add r0, pc
0008c848  01 68                                            ldr r1, [r0]
0008c84a  30 46                                            mov r0, r6
0008c84c  a6 f7 58 e8                                      blx #0x32900
0008c850  05 f1 0c 00                                      add.w r0, r5, #0xc
0008c854  30 60                                            str r0, [r6]
0008c856  c6 f8 08 80                                      str.w r8, [r6, #8]
0008c85a  27 a1                                            adr r1, #0x9c
0008c85c  28 69                                            ldr r0, [r5, #0x10]
0008c85e  70 60                                            str r0, [r6, #4]
0008c860  06 60                                            str r6, [r0]
0008c862  2e 61                                            str r6, [r5, #0x10]
0008c864  20 69                                            ldr r0, [r4, #0x10]
0008c866  3e e0                                            b #0x8c8e6
0008c868  d8 f8 10 10                                      ldr.w r1, [r8, #0x10]
0008c86c  51 b1                                            cbz r1, #0x8c884
0008c86e  20 68                                            ldr r0, [r4]
0008c870  42 6a                                            ldr r2, [r0, #0x24]
0008c872  20 46                                            mov r0, r4
0008c874  90 47                                            blx r2
0008c876  a1 46                                            mov sb, r4
0008c878  20 a1                                            adr r1, #0x80
0008c87a  59 f8 10 0f                                      ldr r0, [sb, #0x10]!
0008c87e  a7 f7 d2 ed                                      blx #0x34424
0008c882  01 e0                                            b #0x8c888
0008c884  04 f1 10 09                                      add.w sb, r4, #0x10
0008c888  d8 f8 14 00                                      ldr.w r0, [r8, #0x14]
0008c88c  1c 49                                            ldr r1, [pc, #0x70]
0008c88e  82 6b                                            ldr r2, [r0, #0x38]
0008c890  79 44                                            add r1, pc
0008c892  d9 f8 00 00                                      ldr.w r0, [sb]
0008c896  12 69                                            ldr r2, [r2, #0x10]
0008c898  a7 f7 c4 ed                                      blx #0x34424
0008c89c  d8 f8 18 50                                      ldr.w r5, [r8, #0x18]
0008c8a0  00 2d                                            cmp r5, #0
0008c8a2  18 bf                                            it ne
0008c8a4  04 3d                                            subne r5, #4
0008c8a6  2e 46                                            mov r6, r5
0008c8a8  56 f8 04 0f                                      ldr r0, [r6, #4]!
0008c8ac  c0 b1                                            cbz r0, #0x8c8e0
0008c8ae  0f f2 54 08                                      addw r8, pc, #0x54
0008c8b2  01 20                                            movs r0, #1
0008c8b4  c0 07                                            lsls r0, r0, #0x1f
0008c8b6  04 d1                                            bne #0x8c8c2
0008c8b8  d9 f8 00 00                                      ldr.w r0, [sb]
0008c8bc  41 46                                            mov r1, r8
0008c8be  a7 f7 b2 ed                                      blx #0x34424
0008c8c2  28 68                                            ldr r0, [r5]
0008c8c4  21 46                                            mov r1, r4
0008c8c6  82 68                                            ldr r2, [r0, #8]
0008c8c8  28 46                                            mov r0, r5
0008c8ca  90 47                                            blx r2
0008c8cc  35 68                                            ldr r5, [r6]
0008c8ce  00 20                                            movs r0, #0
0008c8d0  00 2d                                            cmp r5, #0
0008c8d2  18 bf                                            it ne
0008c8d4  04 3d                                            subne r5, #4
0008c8d6  2e 46                                            mov r6, r5
0008c8d8  56 f8 04 1f                                      ldr r1, [r6, #4]!
0008c8dc  00 29                                            cmp r1, #0
0008c8de  e9 d1                                            bne #0x8c8b4
0008c8e0  d9 f8 00 00                                      ldr.w r0, [sb]
0008c8e4  08 a1                                            adr r1, #0x20
0008c8e6  bd e8 00 0b                                      pop.w {r8, sb, fp}
0008c8ea  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008c8ee  24 f0 4b ba                                      b.w #0xb0d88
0008c8f2  00 bf                                            nop
0008c8f4  f2 fc 04 00                                      ldc2l p0, c0, [r2], #0x10
0008c8f8  2f 2f                                            cmp r7, #0x2f
0008c8fa  00 00                                            movs r0, r0
0008c8fc  20 3d                                            subs r5, #0x20
0008c8fe  20 00                                            movs r0, r4
0008c900  22 42                                            tst r2, r4
0008c902  03 00                                            movs r3, r0
0008c904  2c 20                                            movs r0, #0x2c
0008c906  00 00                                            movs r0, r0
0008c908  29 00                                            movs r1, r5
0008c90a  00 00                                            movs r0, r0

; FUNCTION 0x0008c90c, declared_size=56, range_size=56, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor5visitEP9ir_return
; demangled: ir_print_metal_visitor::visit(ir_return*)
; decoder-mode: thumb
0008c90c  b0 b5                                            push {r4, r5, r7, lr}
0008c90e  02 af                                            add r7, sp, #8
0008c910  04 46                                            mov r4, r0
0008c912  0d 46                                            mov r5, r1
0008c914  20 69                                            ldr r0, [r4, #0x10]
0008c916  08 a1                                            adr r1, #0x20
0008c918  a7 f7 84 ed                                      blx #0x34424
0008c91c  2d 69                                            ldr r5, [r5, #0x10]
0008c91e  55 b1                                            cbz r5, #0x8c936
0008c920  20 69                                            ldr r0, [r4, #0x10]
0008c922  07 a1                                            adr r1, #0x1c
0008c924  a7 f7 7e ed                                      blx #0x34424
0008c928  28 68                                            ldr r0, [r5]
0008c92a  21 46                                            mov r1, r4
0008c92c  82 68                                            ldr r2, [r0, #8]
0008c92e  28 46                                            mov r0, r5
0008c930  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
0008c934  10 47                                            bx r2
0008c936  b0 bd                                            pop {r4, r5, r7, pc}
0008c938  72 65                                            str r2, [r6, #0x54]
0008c93a  74 75                                            strb r4, [r6, #0x15]
0008c93c  72 6e                                            ldr r2, [r6, #0x64]
0008c93e  00 00                                            movs r0, r0
0008c940  20 00                                            movs r0, r4
0008c942  00 00                                            movs r0, r0

; FUNCTION 0x0008c944, declared_size=72, range_size=72, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor5visitEP10ir_discard
; demangled: ir_print_metal_visitor::visit(ir_discard*)
; decoder-mode: thumb
0008c944  b0 b5                                            push {r4, r5, r7, lr}
0008c946  02 af                                            add r7, sp, #8
0008c948  04 46                                            mov r4, r0
0008c94a  0d 46                                            mov r5, r1
0008c94c  20 69                                            ldr r0, [r4, #0x10]
0008c94e  08 a1                                            adr r1, #0x20
0008c950  a7 f7 68 ed                                      blx #0x34424
0008c954  28 69                                            ldr r0, [r5, #0x10]
0008c956  50 b1                                            cbz r0, #0x8c96e
0008c958  20 69                                            ldr r0, [r4, #0x10]
0008c95a  0a a1                                            adr r1, #0x28
0008c95c  a7 f7 62 ed                                      blx #0x34424
0008c960  28 69                                            ldr r0, [r5, #0x10]
0008c962  01 68                                            ldr r1, [r0]
0008c964  8a 68                                            ldr r2, [r1, #8]
0008c966  21 46                                            mov r1, r4
0008c968  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
0008c96c  10 47                                            bx r2
0008c96e  b0 bd                                            pop {r4, r5, r7, pc}
0008c970  64 69                                            ldr r4, [r4, #0x14]
0008c972  73 63                                            str r3, [r6, #0x34]
0008c974  61 72                                            strb r1, [r4, #9]
0008c976  64 5f                                            ldrsh r4, [r4, r5]
0008c978  66 72                                            strb r6, [r4, #9]
0008c97a  61 67                                            str r1, [r4, #0x74]
0008c97c  6d 65                                            str r5, [r5, #0x54]
0008c97e  6e 74                                            strb r6, [r5, #0x11]
0008c980  28 29                                            cmp r1, #0x28
0008c982  00 00                                            movs r0, r0
0008c984  20 54                                            strb r0, [r4, r0]
0008c986  4f 44                                            add r7, sb
0008c988  4f 20                                            movs r0, #0x4f
0008c98a  00 00                                            movs r0, r0

; FUNCTION 0x0008c98c, declared_size=348, range_size=348, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor5visitEP5ir_if
; demangled: ir_print_metal_visitor::visit(ir_if*)
; decoder-mode: thumb
0008c98c  f0 b5                                            push {r4, r5, r6, r7, lr}
0008c98e  03 af                                            add r7, sp, #0xc
0008c990  2d e9 00 07                                      push.w {r8, sb, sl}
0008c994  04 46                                            mov r4, r0
0008c996  88 46                                            mov r8, r1
0008c998  20 69                                            ldr r0, [r4, #0x10]
0008c99a  4b a1                                            adr r1, #0x12c
0008c99c  a7 f7 42 ed                                      blx #0x34424
0008c9a0  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
0008c9a4  01 68                                            ldr r1, [r0]
0008c9a6  8a 68                                            ldr r2, [r1, #8]
0008c9a8  21 46                                            mov r1, r4
0008c9aa  90 47                                            blx r2
0008c9ac  48 49                                            ldr r1, [pc, #0x120]
0008c9ae  20 69                                            ldr r0, [r4, #0x10]
0008c9b0  79 44                                            add r1, pc
0008c9b2  a7 f7 38 ed                                      blx #0x34424
0008c9b6  a0 68                                            ldr r0, [r4, #8]
0008c9b8  4f f0 00 0a                                      mov.w sl, #0
0008c9bc  84 f8 2b a0                                      strb.w sl, [r4, #0x2b]
0008c9c0  01 30                                            adds r0, #1
0008c9c2  a0 60                                            str r0, [r4, #8]
0008c9c4  d8 f8 14 50                                      ldr.w r5, [r8, #0x14]
0008c9c8  00 2d                                            cmp r5, #0
0008c9ca  18 bf                                            it ne
0008c9cc  04 3d                                            subne r5, #4
0008c9ce  2e 46                                            mov r6, r5
0008c9d0  56 f8 04 1f                                      ldr r1, [r6, #4]!
0008c9d4  11 b3                                            cbz r1, #0x8ca1c
0008c9d6  0f f2 fc 09                                      addw sb, pc, #0xfc
0008c9da  20 46                                            mov r0, r4
0008c9dc  a7 f7 1e ee                                      blx #0x3461c
0008c9e0  28 68                                            ldr r0, [r5]
0008c9e2  21 46                                            mov r1, r4
0008c9e4  82 68                                            ldr r2, [r0, #8]
0008c9e6  28 46                                            mov r0, r5
0008c9e8  90 47                                            blx r2
0008c9ea  94 f8 2a 00                                      ldrb.w r0, [r4, #0x2a]
0008c9ee  08 b1                                            cbz r0, #0x8c9f4
0008c9f0  01 20                                            movs r0, #1
0008c9f2  05 e0                                            b #0x8ca00
0008c9f4  20 69                                            ldr r0, [r4, #0x10]
0008c9f6  49 46                                            mov r1, sb
0008c9f8  a7 f7 14 ed                                      blx #0x34424
0008c9fc  94 f8 2a 00                                      ldrb.w r0, [r4, #0x2a]
0008ca00  84 f8 2a a0                                      strb.w sl, [r4, #0x2a]
0008ca04  84 f8 2b 00                                      strb.w r0, [r4, #0x2b]
0008ca08  35 68                                            ldr r5, [r6]
0008ca0a  00 2d                                            cmp r5, #0
0008ca0c  18 bf                                            it ne
0008ca0e  04 3d                                            subne r5, #4
0008ca10  2e 46                                            mov r6, r5
0008ca12  56 f8 04 0f                                      ldr r0, [r6, #4]!
0008ca16  00 28                                            cmp r0, #0
0008ca18  df d1                                            bne #0x8c9da
0008ca1a  a0 68                                            ldr r0, [r4, #8]
0008ca1c  01 38                                            subs r0, #1
0008ca1e  a0 60                                            str r0, [r4, #8]
0008ca20  20 46                                            mov r0, r4
0008ca22  a7 f7 fc ed                                      blx #0x3461c
0008ca26  20 69                                            ldr r0, [r4, #0x10]
0008ca28  2b a1                                            adr r1, #0xac
0008ca2a  a7 f7 fc ec                                      blx #0x34424
0008ca2e  d8 f8 20 00                                      ldr.w r0, [r8, #0x20]
0008ca32  08 f1 24 01                                      add.w r1, r8, #0x24
0008ca36  88 42                                            cmp r0, r1
0008ca38  43 d0                                            beq #0x8cac2
0008ca3a  20 69                                            ldr r0, [r4, #0x10]
0008ca3c  27 a1                                            adr r1, #0x9c
0008ca3e  a7 f7 f2 ec                                      blx #0x34424
0008ca42  a0 68                                            ldr r0, [r4, #8]
0008ca44  4f f0 00 09                                      mov.w sb, #0
0008ca48  84 f8 2b 90                                      strb.w sb, [r4, #0x2b]
0008ca4c  01 30                                            adds r0, #1
0008ca4e  a0 60                                            str r0, [r4, #8]
0008ca50  d8 f8 20 60                                      ldr.w r6, [r8, #0x20]
0008ca54  00 2e                                            cmp r6, #0
0008ca56  18 bf                                            it ne
0008ca58  04 3e                                            subne r6, #4
0008ca5a  35 46                                            mov r5, r6
0008ca5c  55 f8 04 1f                                      ldr r1, [r5, #4]!
0008ca60  11 b3                                            cbz r1, #0x8caa8
0008ca62  0f f2 70 08                                      addw r8, pc, #0x70
0008ca66  20 46                                            mov r0, r4
0008ca68  a7 f7 d8 ed                                      blx #0x3461c
0008ca6c  30 68                                            ldr r0, [r6]
0008ca6e  21 46                                            mov r1, r4
0008ca70  82 68                                            ldr r2, [r0, #8]
0008ca72  30 46                                            mov r0, r6
0008ca74  90 47                                            blx r2
0008ca76  94 f8 2a 00                                      ldrb.w r0, [r4, #0x2a]
0008ca7a  08 b1                                            cbz r0, #0x8ca80
0008ca7c  01 20                                            movs r0, #1
0008ca7e  05 e0                                            b #0x8ca8c
0008ca80  20 69                                            ldr r0, [r4, #0x10]
0008ca82  41 46                                            mov r1, r8
0008ca84  a7 f7 ce ec                                      blx #0x34424
0008ca88  94 f8 2a 00                                      ldrb.w r0, [r4, #0x2a]
0008ca8c  84 f8 2a 90                                      strb.w sb, [r4, #0x2a]
0008ca90  84 f8 2b 00                                      strb.w r0, [r4, #0x2b]
0008ca94  2e 68                                            ldr r6, [r5]
0008ca96  00 2e                                            cmp r6, #0
0008ca98  18 bf                                            it ne
0008ca9a  04 3e                                            subne r6, #4
0008ca9c  35 46                                            mov r5, r6
0008ca9e  55 f8 04 0f                                      ldr r0, [r5, #4]!
0008caa2  00 28                                            cmp r0, #0
0008caa4  df d1                                            bne #0x8ca66
0008caa6  a0 68                                            ldr r0, [r4, #8]
0008caa8  01 38                                            subs r0, #1
0008caaa  a0 60                                            str r0, [r4, #8]
0008caac  20 46                                            mov r0, r4
0008caae  a7 f7 b6 ed                                      blx #0x3461c
0008cab2  20 69                                            ldr r0, [r4, #0x10]
0008cab4  08 a1                                            adr r1, #0x20
0008cab6  bd e8 00 07                                      pop.w {r8, sb, sl}
0008caba  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008cabe  24 f0 63 b9                                      b.w #0xb0d88
0008cac2  bd e8 00 07                                      pop.w {r8, sb, sl}
0008cac6  f0 bd                                            pop {r4, r5, r6, r7, pc}
0008cac8  69 66                                            str r1, [r5, #0x64]
0008caca  20 28                                            cmp r0, #0x20
0008cacc  00 00                                            movs r0, r0
0008cace  00 00                                            movs r0, r0
0008cad0  11 41                                            asrs r1, r2
0008cad2  03 00                                            movs r3, r0
0008cad4  3b 0a                                            lsrs r3, r7, #8
0008cad6  00 00                                            movs r0, r0
0008cad8  7d 00                                            lsls r5, r7, #1
0008cada  00 00                                            movs r0, r0
0008cadc  20 65                                            str r0, [r4, #0x50]
0008cade  6c 73                                            strb r4, [r5, #0xd]
0008cae0  65 20                                            movs r0, #0x65
0008cae2  7b 0a                                            lsrs r3, r7, #9
0008cae4  00 00                                            movs r0, r0
0008cae6  00 00                                            movs r0, r0

; FUNCTION 0x0008cae8, declared_size=816, range_size=816, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor18emit_canonical_forEP7ir_loop
; demangled: ir_print_metal_visitor::emit_canonical_for(ir_loop*)
; decoder-mode: thumb
0008cae8  f0 b5                                            push {r4, r5, r6, r7, lr}
0008caea  03 af                                            add r7, sp, #0xc
0008caec  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
0008caf0  83 b0                                            sub sp, #0xc
0008caf2  04 46                                            mov r4, r0
0008caf4  0d 46                                            mov r5, r1
0008caf6  60 6a                                            ldr r0, [r4, #0x24]
0008caf8  a7 f7 dc ec                                      blx #0x344b4
0008cafc  82 46                                            mov sl, r0
0008cafe  ba f1 00 0f                                      cmp.w sl, #0
0008cb02  1e bf                                            ittt ne
0008cb04  0a f1 24 00                                      addne.w r0, sl, #0x24
0008cb08  da f8 20 10                                      ldrne.w r1, [sl, #0x20]
0008cb0c  81 42                                            cmpne r1, r0
0008cb0e  04 d1                                            bne #0x8cb1a
0008cb10  00 20                                            movs r0, #0
0008cb12  03 b0                                            add sp, #0xc
0008cb14  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
0008cb18  f0 bd                                            pop {r4, r5, r6, r7, pc}
0008cb1a  da f8 30 00                                      ldr.w r0, [sl, #0x30]
0008cb1e  0a f1 34 01                                      add.w r1, sl, #0x34
0008cb22  88 42                                            cmp r0, r1
0008cb24  f4 d0                                            beq #0x8cb10
0008cb26  02 21                                            movs r1, #2
0008cb28  00 68                                            ldr r0, [r0]
0008cb2a  01 39                                            subs r1, #1
0008cb2c  00 28                                            cmp r0, #0
0008cb2e  fb d1                                            bne #0x8cb28
0008cb30  00 29                                            cmp r1, #0
0008cb32  ed d1                                            bne #0x8cb10
0008cb34  a3 48                                            ldr r0, [pc, #0x28c]
0008cb36  a4 49                                            ldr r1, [pc, #0x290]
0008cb38  78 44                                            add r0, pc
0008cb3a  00 95                                            str r5, [sp]
0008cb3c  79 44                                            add r1, pc
0008cb3e  05 68                                            ldr r5, [r0]
0008cb40  00 20                                            movs r0, #0
0008cb42  d1 f8 00 90                                      ldr.w sb, [r1]
0008cb46  29 46                                            mov r1, r5
0008cb48  4a 46                                            mov r2, sb
0008cb4a  a5 f7 14 ee                                      blx #0x32774
0008cb4e  83 46                                            mov fp, r0
0008cb50  00 20                                            movs r0, #0
0008cb52  29 46                                            mov r1, r5
0008cb54  4a 46                                            mov r2, sb
0008cb56  a5 f7 0e ee                                      blx #0x32774
0008cb5a  01 90                                            str r0, [sp, #4]
0008cb5c  9b a1                                            adr r1, #0x26c
0008cb5e  20 69                                            ldr r0, [r4, #0x10]
0008cb60  a7 f7 60 ec                                      blx #0x34424
0008cb64  01 20                                            movs r0, #1
0008cb66  84 f8 28 00                                      strb.w r0, [r4, #0x28]
0008cb6a  da f8 2c 00                                      ldr.w r0, [sl, #0x2c]
0008cb6e  cd f8 08 b0                                      str.w fp, [sp, #8]
0008cb72  01 28                                            cmp r0, #1
0008cb74  4a d1                                            bne #0x8cc0c
0008cb76  da f8 20 90                                      ldr.w sb, [sl, #0x20]
0008cb7a  d9 f8 00 00                                      ldr.w r0, [sb]
0008cb7e  00 28                                            cmp r0, #0
0008cb80  44 d0                                            beq #0x8cc0c
0008cb82  94 a6                                            adr r6, #0x250
0008cb84  d9 f8 08 10                                      ldr.w r1, [sb, #8]
0008cb88  60 6a                                            ldr r0, [r4, #0x24]
0008cb8a  a7 f7 70 ec                                      blx #0x3446c
0008cb8e  b8 b3                                            cbz r0, #0x8cc00
0008cb90  d9 f8 08 b0                                      ldr.w fp, [sb, #8]
0008cb94  25 69                                            ldr r5, [r4, #0x10]
0008cb96  58 46                                            mov r0, fp
0008cb98  db f8 10 80                                      ldr.w r8, [fp, #0x10]
0008cb9c  a6 f7 84 e8                                      blx #0x32ca8
0008cba0  02 46                                            mov r2, r0
0008cba2  02 2a                                            cmp r2, #2
0008cba4  08 bf                                            it eq
0008cba6  01 22                                            moveq r2, #1
0008cba8  28 46                                            mov r0, r5
0008cbaa  41 46                                            mov r1, r8
0008cbac  00 23                                            movs r3, #0
0008cbae  fe f7 7d fd                                      bl #0x8b6ac
0008cbb2  20 69                                            ldr r0, [r4, #0x10]
0008cbb4  31 46                                            mov r1, r6
0008cbb6  a7 f7 36 ec                                      blx #0x34424
0008cbba  20 69                                            ldr r0, [r4, #0x10]
0008cbbc  59 46                                            mov r1, fp
0008cbbe  01 22                                            movs r2, #1
0008cbc0  ff f7 32 fa                                      bl #0x8c028
0008cbc4  20 46                                            mov r0, r4
0008cbc6  59 46                                            mov r1, fp
0008cbc8  a7 f7 2e ed                                      blx #0x34628
0008cbcc  db f8 10 00                                      ldr.w r0, [fp, #0x10]
0008cbd0  41 68                                            ldr r1, [r0, #4]
0008cbd2  09 29                                            cmp r1, #9
0008cbd4  05 d1                                            bne #0x8cbe2
0008cbd6  8f 49                                            ldr r1, [pc, #0x23c]
0008cbd8  02 69                                            ldr r2, [r0, #0x10]
0008cbda  20 69                                            ldr r0, [r4, #0x10]
0008cbdc  79 44                                            add r1, pc
0008cbde  a7 f7 22 ec                                      blx #0x34424
0008cbe2  d9 f8 14 00                                      ldr.w r0, [sb, #0x14]
0008cbe6  dd f8 08 b0                                      ldr.w fp, [sp, #8]
0008cbea  48 b1                                            cbz r0, #0x8cc00
0008cbec  20 69                                            ldr r0, [r4, #0x10]
0008cbee  7a a1                                            adr r1, #0x1e8
0008cbf0  a7 f7 18 ec                                      blx #0x34424
0008cbf4  d9 f8 14 00                                      ldr.w r0, [sb, #0x14]
0008cbf8  01 68                                            ldr r1, [r0]
0008cbfa  8a 68                                            ldr r2, [r1, #8]
0008cbfc  21 46                                            mov r1, r4
0008cbfe  90 47                                            blx r2
0008cc00  d9 f8 00 90                                      ldr.w sb, [sb]
0008cc04  d9 f8 00 00                                      ldr.w r0, [sb]
0008cc08  00 28                                            cmp r0, #0
0008cc0a  bb d1                                            bne #0x8cb84
0008cc0c  20 69                                            ldr r0, [r4, #0x10]
0008cc0e  73 a1                                            adr r1, #0x1cc
0008cc10  a7 f7 08 ec                                      blx #0x34424
0008cc14  da f8 30 50                                      ldr.w r5, [sl, #0x30]
0008cc18  28 68                                            ldr r0, [r5]
0008cc1a  00 28                                            cmp r0, #0
0008cc1c  5a d0                                            beq #0x8ccd4
0008cc1e  df f8 c0 81                                      ldr.w r8, [pc, #0x1c0]
0008cc22  0f f2 c0 19                                      addw sb, pc, #0x1c0
0008cc26  f8 44                                            add r8, pc
0008cc28  aa 68                                            ldr r2, [r5, #8]
0008cc2a  58 46                                            mov r0, fp
0008cc2c  29 46                                            mov r1, r5
0008cc2e  a5 f7 96 ed                                      blx #0x3275c
0008cc32  a8 68                                            ldr r0, [r5, #8]
0008cc34  06 69                                            ldr r6, [r0, #0x10]
0008cc36  ce b1                                            cbz r6, #0x8cc6c
0008cc38  f0 68                                            ldr r0, [r6, #0xc]
0008cc3a  04 28                                            cmp r0, #4
0008cc3c  16 d1                                            bne #0x8cc6c
0008cc3e  b1 69                                            ldr r1, [r6, #0x18]
0008cc40  a1 f1 46 00                                      sub.w r0, r1, #0x46
0008cc44  05 28                                            cmp r0, #5
0008cc46  09 d8                                            bhi #0x8cc5c
0008cc48  c3 46                                            mov fp, r8
0008cc4a  df e8 00 f0                                      tbb [pc, r0]
0008cc4e  2d 03                                            lsls r5, r5, #0xc
0008cc50  1e 26                                            movs r6, #0x1e
0008cc52  22 2a                                            cmp r2, #0x22
0008cc54  df f8 a8 b1                                      ldr.w fp, [pc, #0x1a8]
0008cc58  fb 44                                            add fp, pc
0008cc5a  25 e0                                            b #0x8cca8
0008cc5c  01 29                                            cmp r1, #1
0008cc5e  05 d1                                            bne #0x8cc6c
0008cc60  f0 69                                            ldr r0, [r6, #0x1c]
0008cc62  01 68                                            ldr r1, [r0]
0008cc64  8a 68                                            ldr r2, [r1, #8]
0008cc66  21 46                                            mov r1, r4
0008cc68  90 47                                            blx r2
0008cc6a  2f e0                                            b #0x8cccc
0008cc6c  20 69                                            ldr r0, [r4, #0x10]
0008cc6e  49 46                                            mov r1, sb
0008cc70  a7 f7 d8 eb                                      blx #0x34424
0008cc74  a8 68                                            ldr r0, [r5, #8]
0008cc76  00 69                                            ldr r0, [r0, #0x10]
0008cc78  01 68                                            ldr r1, [r0]
0008cc7a  8a 68                                            ldr r2, [r1, #8]
0008cc7c  21 46                                            mov r1, r4
0008cc7e  90 47                                            blx r2
0008cc80  20 69                                            ldr r0, [r4, #0x10]
0008cc82  59 a1                                            adr r1, #0x164
0008cc84  a7 f7 ce eb                                      blx #0x34424
0008cc88  20 e0                                            b #0x8cccc
0008cc8a  df f8 78 b1                                      ldr.w fp, [pc, #0x178]
0008cc8e  fb 44                                            add fp, pc
0008cc90  0a e0                                            b #0x8cca8
0008cc92  df f8 78 b1                                      ldr.w fp, [pc, #0x178]
0008cc96  fb 44                                            add fp, pc
0008cc98  06 e0                                            b #0x8cca8
0008cc9a  df f8 6c b1                                      ldr.w fp, [pc, #0x16c]
0008cc9e  fb 44                                            add fp, pc
0008cca0  02 e0                                            b #0x8cca8
0008cca2  df f8 6c b1                                      ldr.w fp, [pc, #0x16c]
0008cca6  fb 44                                            add fp, pc
0008cca8  f0 69                                            ldr r0, [r6, #0x1c]
0008ccaa  01 68                                            ldr r1, [r0]
0008ccac  8a 68                                            ldr r2, [r1, #8]
0008ccae  21 46                                            mov r1, r4
0008ccb0  90 47                                            blx r2
0008ccb2  52 49                                            ldr r1, [pc, #0x148]
0008ccb4  5a 46                                            mov r2, fp
0008ccb6  20 69                                            ldr r0, [r4, #0x10]
0008ccb8  79 44                                            add r1, pc
0008ccba  a7 f7 b4 eb                                      blx #0x34424
0008ccbe  30 6a                                            ldr r0, [r6, #0x20]
0008ccc0  01 68                                            ldr r1, [r0]
0008ccc2  8a 68                                            ldr r2, [r1, #8]
0008ccc4  21 46                                            mov r1, r4
0008ccc6  90 47                                            blx r2
0008ccc8  dd f8 08 b0                                      ldr.w fp, [sp, #8]
0008cccc  2d 68                                            ldr r5, [r5]
0008ccce  28 68                                            ldr r0, [r5]
0008ccd0  00 28                                            cmp r0, #0
0008ccd2  a9 d1                                            bne #0x8cc28
0008ccd4  20 69                                            ldr r0, [r4, #0x10]
0008ccd6  41 a1                                            adr r1, #0x104
0008ccd8  a7 f7 a4 eb                                      blx #0x34424
0008ccdc  da f8 20 50                                      ldr.w r5, [sl, #0x20]
0008cce0  dd f8 04 a0                                      ldr.w sl, [sp, #4]
0008cce4  28 68                                            ldr r0, [r5]
0008cce6  b8 b1                                            cbz r0, #0x8cd18
0008cce8  0f f2 00 18                                      addw r8, pc, #0x100
0008ccec  01 26                                            movs r6, #1
0008ccee  2a 69                                            ldr r2, [r5, #0x10]
0008ccf0  50 46                                            mov r0, sl
0008ccf2  29 46                                            mov r1, r5
0008ccf4  a5 f7 32 ed                                      blx #0x3275c
0008ccf8  f0 07                                            lsls r0, r6, #0x1f
0008ccfa  03 d1                                            bne #0x8cd04
0008ccfc  20 69                                            ldr r0, [r4, #0x10]
0008ccfe  41 46                                            mov r1, r8
0008cd00  a7 f7 90 eb                                      blx #0x34424
0008cd04  20 68                                            ldr r0, [r4]
0008cd06  29 69                                            ldr r1, [r5, #0x10]
0008cd08  02 6b                                            ldr r2, [r0, #0x30]
0008cd0a  20 46                                            mov r0, r4
0008cd0c  90 47                                            blx r2
0008cd0e  2d 68                                            ldr r5, [r5]
0008cd10  00 26                                            movs r6, #0
0008cd12  28 68                                            ldr r0, [r5]
0008cd14  00 28                                            cmp r0, #0
0008cd16  ea d1                                            bne #0x8ccee
0008cd18  35 49                                            ldr r1, [pc, #0xd4]
0008cd1a  20 69                                            ldr r0, [r4, #0x10]
0008cd1c  79 44                                            add r1, pc
0008cd1e  a7 f7 82 eb                                      blx #0x34424
0008cd22  a0 68                                            ldr r0, [r4, #8]
0008cd24  4f f0 00 09                                      mov.w sb, #0
0008cd28  84 f8 28 90                                      strb.w sb, [r4, #0x28]
0008cd2c  84 f8 2b 90                                      strb.w sb, [r4, #0x2b]
0008cd30  01 30                                            adds r0, #1
0008cd32  a0 60                                            str r0, [r4, #8]
0008cd34  00 99                                            ldr r1, [sp]
0008cd36  0e 69                                            ldr r6, [r1, #0x10]
0008cd38  00 2e                                            cmp r6, #0
0008cd3a  18 bf                                            it ne
0008cd3c  04 3e                                            subne r6, #4
0008cd3e  35 46                                            mov r5, r6
0008cd40  55 f8 04 1f                                      ldr r1, [r5, #4]!
0008cd44  61 b3                                            cbz r1, #0x8cda0
0008cd46  0f f2 ac 08                                      addw r8, pc, #0xac
0008cd4a  58 46                                            mov r0, fp
0008cd4c  31 46                                            mov r1, r6
0008cd4e  a5 f7 d0 ec                                      blx #0x326f0
0008cd52  d8 b9                                            cbnz r0, #0x8cd8c
0008cd54  50 46                                            mov r0, sl
0008cd56  31 46                                            mov r1, r6
0008cd58  a5 f7 ca ec                                      blx #0x326f0
0008cd5c  b0 b9                                            cbnz r0, #0x8cd8c
0008cd5e  20 46                                            mov r0, r4
0008cd60  a7 f7 5c ec                                      blx #0x3461c
0008cd64  30 68                                            ldr r0, [r6]
0008cd66  21 46                                            mov r1, r4
0008cd68  82 68                                            ldr r2, [r0, #8]
0008cd6a  30 46                                            mov r0, r6
0008cd6c  90 47                                            blx r2
0008cd6e  94 f8 2a 00                                      ldrb.w r0, [r4, #0x2a]
0008cd72  08 b1                                            cbz r0, #0x8cd78
0008cd74  01 20                                            movs r0, #1
0008cd76  05 e0                                            b #0x8cd84
0008cd78  20 69                                            ldr r0, [r4, #0x10]
0008cd7a  41 46                                            mov r1, r8
0008cd7c  a7 f7 52 eb                                      blx #0x34424
0008cd80  94 f8 2a 00                                      ldrb.w r0, [r4, #0x2a]
0008cd84  84 f8 2a 90                                      strb.w sb, [r4, #0x2a]
0008cd88  84 f8 2b 00                                      strb.w r0, [r4, #0x2b]
0008cd8c  2e 68                                            ldr r6, [r5]
0008cd8e  00 2e                                            cmp r6, #0
0008cd90  18 bf                                            it ne
0008cd92  04 3e                                            subne r6, #4
0008cd94  35 46                                            mov r5, r6
0008cd96  55 f8 04 0f                                      ldr r0, [r5, #4]!
0008cd9a  00 28                                            cmp r0, #0
0008cd9c  d5 d1                                            bne #0x8cd4a
0008cd9e  a0 68                                            ldr r0, [r4, #8]
0008cda0  01 38                                            subs r0, #1
0008cda2  a0 60                                            str r0, [r4, #8]
0008cda4  20 46                                            mov r0, r4
0008cda6  a7 f7 3a ec                                      blx #0x3461c
0008cdaa  20 69                                            ldr r0, [r4, #0x10]
0008cdac  12 a1                                            adr r1, #0x48
0008cdae  a7 f7 3a eb                                      blx #0x34424
0008cdb2  58 46                                            mov r0, fp
0008cdb4  a5 f7 ea ec                                      blx #0x3278c
0008cdb8  50 46                                            mov r0, sl
0008cdba  a5 f7 e8 ec                                      blx #0x3278c
0008cdbe  01 20                                            movs r0, #1
0008cdc0  a7 e6                                            b #0x8cb12
0008cdc2  00 bf                                            nop
0008cdc4  34 fa                                            .byte 0x34, 0xfa
0008cdc6  04 00                                            movs r4, r0
0008cdc8  34 fa                                            .byte 0x34, 0xfa
0008cdca  04 00                                            movs r4, r0
0008cdcc  66 6f                                            ldr r6, [r4, #0x74]
0008cdce  72 20                                            movs r0, #0x72
0008cdd0  28 00                                            movs r0, r5
0008cdd2  00 00                                            movs r0, r0
0008cdd4  20 00                                            movs r0, r4
0008cdd6  00 00                                            movs r0, r0
0008cdd8  20 3d                                            subs r5, #0x20
0008cdda  20 00                                            movs r0, r4
0008cddc  3b 20                                            movs r0, #0x3b
0008cdde  00 00                                            movs r0, r0
0008cde0  31 d2                                            bhs #0x8ce46
0008cde2  02 00                                            movs r2, r0
0008cde4  21 28                                            cmp r0, #0x21
0008cde6  00 00                                            movs r0, r0
0008cde8  29 00                                            movs r1, r5
0008cdea  00 00                                            movs r0, r0
0008cdec  2c 20                                            movs r0, #0x2c
0008cdee  00 00                                            movs r0, r0
0008cdf0  a5 3d                                            subs r5, #0xa5
0008cdf2  03 00                                            movs r3, r0
0008cdf4  3b 0a                                            lsrs r3, r7, #8
0008cdf6  00 00                                            movs r0, r0
0008cdf8  7d 00                                            lsls r5, r7, #1
0008cdfa  00 00                                            movs r0, r0
0008cdfc  ff 3d                                            subs r5, #0xff
0008cdfe  03 00                                            movs r3, r0
0008ce00  fc d1                                            bne #0x8cdfc
0008ce02  02 00                                            movs r2, r0
0008ce04  c4 d1                                            bne #0x8cd90
0008ce06  02 00                                            movs r2, r0
0008ce08  b2 d1                                            bne #0x8cd70
0008ce0a  02 00                                            movs r2, r0
0008ce0c  c7 d1                                            bne #0x8cd9e
0008ce0e  02 00                                            movs r2, r0
0008ce10  b4 d1                                            bne #0x8cd7c
0008ce12  02 00                                            movs r2, r0
0008ce14  0e 41                                            asrs r6, r1
0008ce16  03 00                                            movs r3, r0

; FUNCTION 0x0008ce18, declared_size=184, range_size=184, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor5visitEP7ir_loop
; demangled: ir_print_metal_visitor::visit(ir_loop*)
; decoder-mode: thumb
0008ce18  f0 b5                                            push {r4, r5, r6, r7, lr}
0008ce1a  03 af                                            add r7, sp, #0xc
0008ce1c  2d e9 00 0b                                      push.w {r8, sb, fp}
0008ce20  0e 46                                            mov r6, r1
0008ce22  04 46                                            mov r4, r0
0008ce24  a7 f7 18 ec                                      blx #0x34658
0008ce28  10 b1                                            cbz r0, #0x8ce30
0008ce2a  bd e8 00 0b                                      pop.w {r8, sb, fp}
0008ce2e  f0 bd                                            pop {r4, r5, r6, r7, pc}
0008ce30  20 69                                            ldr r0, [r4, #0x10]
0008ce32  21 a1                                            adr r1, #0x84
0008ce34  a7 f7 f6 ea                                      blx #0x34424
0008ce38  a0 68                                            ldr r0, [r4, #8]
0008ce3a  4f f0 00 09                                      mov.w sb, #0
0008ce3e  84 f8 2b 90                                      strb.w sb, [r4, #0x2b]
0008ce42  01 30                                            adds r0, #1
0008ce44  a0 60                                            str r0, [r4, #8]
0008ce46  36 69                                            ldr r6, [r6, #0x10]
0008ce48  00 2e                                            cmp r6, #0
0008ce4a  18 bf                                            it ne
0008ce4c  04 3e                                            subne r6, #4
0008ce4e  35 46                                            mov r5, r6
0008ce50  55 f8 04 1f                                      ldr r1, [r5, #4]!
0008ce54  11 b3                                            cbz r1, #0x8ce9c
0008ce56  0f f2 70 08                                      addw r8, pc, #0x70
0008ce5a  20 46                                            mov r0, r4
0008ce5c  a7 f7 de eb                                      blx #0x3461c
0008ce60  30 68                                            ldr r0, [r6]
0008ce62  21 46                                            mov r1, r4
0008ce64  82 68                                            ldr r2, [r0, #8]
0008ce66  30 46                                            mov r0, r6
0008ce68  90 47                                            blx r2
0008ce6a  94 f8 2a 00                                      ldrb.w r0, [r4, #0x2a]
0008ce6e  08 b1                                            cbz r0, #0x8ce74
0008ce70  01 20                                            movs r0, #1
0008ce72  05 e0                                            b #0x8ce80
0008ce74  20 69                                            ldr r0, [r4, #0x10]
0008ce76  41 46                                            mov r1, r8
0008ce78  a7 f7 d4 ea                                      blx #0x34424
0008ce7c  94 f8 2a 00                                      ldrb.w r0, [r4, #0x2a]
0008ce80  84 f8 2a 90                                      strb.w sb, [r4, #0x2a]
0008ce84  84 f8 2b 00                                      strb.w r0, [r4, #0x2b]
0008ce88  2e 68                                            ldr r6, [r5]
0008ce8a  00 2e                                            cmp r6, #0
0008ce8c  18 bf                                            it ne
0008ce8e  04 3e                                            subne r6, #4
0008ce90  35 46                                            mov r5, r6
0008ce92  55 f8 04 0f                                      ldr r0, [r5, #4]!
0008ce96  00 28                                            cmp r0, #0
0008ce98  df d1                                            bne #0x8ce5a
0008ce9a  a0 68                                            ldr r0, [r4, #8]
0008ce9c  01 38                                            subs r0, #1
0008ce9e  a0 60                                            str r0, [r4, #8]
0008cea0  20 46                                            mov r0, r4
0008cea2  a7 f7 bc eb                                      blx #0x3461c
0008cea6  20 69                                            ldr r0, [r4, #0x10]
0008cea8  08 a1                                            adr r1, #0x20
0008ceaa  bd e8 00 0b                                      pop.w {r8, sb, fp}
0008ceae  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008ceb2  23 f0 69 bf                                      b.w #0xb0d88
0008ceb6  00 bf                                            nop
0008ceb8  77 68                                            ldr r7, [r6, #4]
0008ceba  69 6c                                            ldr r1, [r5, #0x44]
0008cebc  65 20                                            movs r0, #0x65
0008cebe  28 74                                            strb r0, [r5, #0x10]
0008cec0  72 75                                            strb r2, [r6, #0x15]
0008cec2  65 29                                            cmp r1, #0x65
0008cec4  20 7b                                            ldrb r0, [r4, #0xc]
0008cec6  0a 00                                            movs r2, r1
0008cec8  3b 0a                                            lsrs r3, r7, #8
0008ceca  00 00                                            movs r0, r0
0008cecc  7d 00                                            lsls r5, r7, #1
0008cece  00 00                                            movs r0, r0

; FUNCTION 0x0008ced0, declared_size=44, range_size=44, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor5visitEP12ir_loop_jump
; demangled: ir_print_metal_visitor::visit(ir_loop_jump*)
; decoder-mode: thumb
0008ced0  09 69                                            ldr r1, [r1, #0x10]
0008ced2  04 a3                                            adr r3, #0x10
0008ced4  00 69                                            ldr r0, [r0, #0x10]
0008ced6  05 a2                                            adr r2, #0x14
0008ced8  00 29                                            cmp r1, #0
0008ceda  07 a1                                            adr r1, #0x1c
0008cedc  08 bf                                            it eq
0008cede  1a 46                                            moveq r2, r3
0008cee0  23 f0 52 bf                                      b.w #0xb0d88
0008cee4  62 72                                            strb r2, [r4, #9]
0008cee6  65 61                                            str r5, [r4, #0x14]
0008cee8  6b 00                                            lsls r3, r5, #1
0008ceea  00 00                                            movs r0, r0
0008ceec  63 6f                                            ldr r3, [r4, #0x74]
0008ceee  6e 74                                            strb r6, [r5, #0x11]
0008cef0  69 6e                                            ldr r1, [r5, #0x64]
0008cef2  75 65                                            str r5, [r6, #0x54]
0008cef4  00 00                                            movs r0, r0
0008cef6  00 00                                            movs r0, r0
0008cef8  25 73                                            strb r5, [r4, #0xc]
0008cefa  00 00                                            movs r0, r0

; FUNCTION 0x0008cefc, declared_size=2, range_size=2, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor5visitEP22ir_precision_statement
; demangled: ir_print_metal_visitor::visit(ir_precision_statement*)
; decoder-mode: thumb
0008cefc  70 47                                            bx lr

; FUNCTION 0x0008cf00, declared_size=208, range_size=208, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor5visitEP21ir_typedecl_statement
; demangled: ir_print_metal_visitor::visit(ir_typedecl_statement*)
; decoder-mode: thumb
0008cf00  f0 b5                                            push {r4, r5, r6, r7, lr}
0008cf02  03 af                                            add r7, sp, #0xc
0008cf04  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
0008cf08  81 b0                                            sub sp, #4
0008cf0a  0c 46                                            mov r4, r1
0008cf0c  05 46                                            mov r5, r0
0008cf0e  d4 f8 10 80                                      ldr.w r8, [r4, #0x10]
0008cf12  26 a1                                            adr r1, #0x98
0008cf14  28 69                                            ldr r0, [r5, #0x10]
0008cf16  d8 f8 0c 20                                      ldr.w r2, [r8, #0xc]
0008cf1a  a7 f7 84 ea                                      blx #0x34424
0008cf1e  d8 f8 10 10                                      ldr.w r1, [r8, #0x10]
0008cf22  28 69                                            ldr r0, [r5, #0x10]
0008cf24  d1 b3                                            cbz r1, #0x8cf9c
0008cf26  4f f0 00 0a                                      mov.w sl, #0
0008cf2a  4f f0 00 0b                                      mov.w fp, #0
0008cf2e  26 49                                            ldr r1, [pc, #0x98]
0008cf30  79 44                                            add r1, pc
0008cf32  a7 f7 78 ea                                      blx #0x34424
0008cf36  d8 f8 14 00                                      ldr.w r0, [r8, #0x14]
0008cf3a  2e 69                                            ldr r6, [r5, #0x10]
0008cf3c  50 f8 0a 90                                      ldr.w sb, [r0, sl]
0008cf40  20 46                                            mov r0, r4
0008cf42  a5 f7 b2 ee                                      blx #0x32ca8
0008cf46  02 46                                            mov r2, r0
0008cf48  02 2a                                            cmp r2, #2
0008cf4a  08 bf                                            it eq
0008cf4c  01 22                                            moveq r2, #1
0008cf4e  30 46                                            mov r0, r6
0008cf50  49 46                                            mov r1, sb
0008cf52  00 23                                            movs r3, #0
0008cf54  fe f7 aa fb                                      bl #0x8b6ac
0008cf58  d8 f8 14 10                                      ldr.w r1, [r8, #0x14]
0008cf5c  28 69                                            ldr r0, [r5, #0x10]
0008cf5e  51 44                                            add r1, sl
0008cf60  4a 68                                            ldr r2, [r1, #4]
0008cf62  16 a1                                            adr r1, #0x58
0008cf64  a7 f7 5e ea                                      blx #0x34424
0008cf68  d8 f8 14 00                                      ldr.w r0, [r8, #0x14]
0008cf6c  50 f8 0a 00                                      ldr.w r0, [r0, sl]
0008cf70  41 68                                            ldr r1, [r0, #4]
0008cf72  09 29                                            cmp r1, #9
0008cf74  05 d1                                            bne #0x8cf82
0008cf76  15 49                                            ldr r1, [pc, #0x54]
0008cf78  02 69                                            ldr r2, [r0, #0x10]
0008cf7a  28 69                                            ldr r0, [r5, #0x10]
0008cf7c  79 44                                            add r1, pc
0008cf7e  a7 f7 52 ea                                      blx #0x34424
0008cf82  28 69                                            ldr r0, [r5, #0x10]
0008cf84  0e a1                                            adr r1, #0x38
0008cf86  a7 f7 4e ea                                      blx #0x34424
0008cf8a  28 69                                            ldr r0, [r5, #0x10]
0008cf8c  0a f1 18 0a                                      add.w sl, sl, #0x18
0008cf90  d8 f8 10 10                                      ldr.w r1, [r8, #0x10]
0008cf94  0b f1 01 0b                                      add.w fp, fp, #1
0008cf98  8b 45                                            cmp fp, r1
0008cf9a  c8 d3                                            blo #0x8cf2e
0008cf9c  09 a1                                            adr r1, #0x24
0008cf9e  01 b0                                            add sp, #4
0008cfa0  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
0008cfa4  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008cfa8  23 f0 ee be                                      b.w #0xb0d88
0008cfac  73 74                                            strb r3, [r6, #0x11]
0008cfae  72 75                                            strb r2, [r6, #0x15]
0008cfb0  63 74                                            strb r3, [r4, #0x11]
0008cfb2  20 25                                            movs r5, #0x20
0008cfb4  73 20                                            movs r0, #0x73
0008cfb6  7b 0a                                            lsrs r3, r7, #9
0008cfb8  00 00                                            movs r0, r0
0008cfba  00 00                                            movs r0, r0
0008cfbc  20 25                                            movs r5, #0x20
0008cfbe  73 00                                            lsls r3, r6, #1
0008cfc0  3b 0a                                            lsrs r3, r7, #8
0008cfc2  00 00                                            movs r0, r0
0008cfc4  7d 00                                            lsls r5, r7, #1
0008cfc6  00 00                                            movs r0, r0
0008cfc8  4e 3f                                            subs r7, #0x4e
0008cfca  03 00                                            movs r3, r0
0008cfcc  6e 3d                                            subs r5, #0x6e
0008cfce  03 00                                            movs r3, r0

; FUNCTION 0x0008cfd0, declared_size=28, range_size=28, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor5visitEP14ir_emit_vertex
; demangled: ir_print_metal_visitor::visit(ir_emit_vertex*)
; decoder-mode: thumb
0008cfd0  00 69                                            ldr r0, [r0, #0x10]
0008cfd2  01 a1                                            adr r1, #4
0008cfd4  23 f0 d8 be                                      b.w #0xb0d88
0008cfd8  65 6d                                            ldr r5, [r4, #0x54]
0008cfda  69 74                                            strb r1, [r5, #0x11]
0008cfdc  2d 76                                            strb r5, [r5, #0x18]
0008cfde  65 72                                            strb r5, [r4, #9]
0008cfe0  74 65                                            str r4, [r6, #0x54]
0008cfe2  78 2d                                            cmp r5, #0x78
0008cfe4  54 4f                                            ldr r7, [pc, #0x150]
0008cfe6  44 4f                                            ldr r7, [pc, #0x110]
0008cfe8  00 00                                            movs r0, r0
0008cfea  00 00                                            movs r0, r0

; FUNCTION 0x0008cfec, declared_size=28, range_size=28, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitor5visitEP16ir_end_primitive
; demangled: ir_print_metal_visitor::visit(ir_end_primitive*)
; decoder-mode: thumb
0008cfec  00 69                                            ldr r0, [r0, #0x10]
0008cfee  01 a1                                            adr r1, #4
0008cff0  23 f0 ca be                                      b.w #0xb0d88
0008cff4  65 6e                                            ldr r5, [r4, #0x64]
0008cff6  64 2d                                            cmp r5, #0x64
0008cff8  70 72                                            strb r0, [r6, #9]
0008cffa  69 6d                                            ldr r1, [r5, #0x54]
0008cffc  69 74                                            strb r1, [r5, #0x11]
0008cffe  69 76                                            strb r1, [r5, #0x19]
0008d000  65 2d                                            cmp r5, #0x65
0008d002  54 4f                                            ldr r7, [pc, #0x150]
0008d004  44 4f                                            ldr r7, [pc, #0x110]
0008d006  00 00                                            movs r0, r0

; FUNCTION 0x0008d008, declared_size=4, range_size=4, mode=thumb
; class-group: ir_print_metal_visitor
; alias: _ZN22ir_print_metal_visitorD0Ev
; demangled: ir_print_metal_visitor::~ir_print_metal_visitor()
; decoder-mode: thumb
0008d008  23 f0 a6 be                                      b.w #0xb0d58
