; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0008027c, declared_size=376, range_size=376, mode=thumb
; class-group: ir_assignment
; alias: _ZN13ir_assignment7set_lhsEP9ir_rvalue
; demangled: ir_assignment::set_lhs(ir_rvalue*)
; decoder-mode: thumb
0008027c  f0 b5                                            push {r4, r5, r6, r7, lr}
0008027e  03 af                                            add r7, sp, #0xc
00080280  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00080284  85 b0                                            sub sp, #0x14
00080286  82 46                                            mov sl, r0
00080288  56 48                                            ldr r0, [pc, #0x158]
0008028a  8b 46                                            mov fp, r1
0008028c  bb f1 00 0f                                      cmp.w fp, #0
00080290  78 44                                            add r0, pc
00080292  00 68                                            ldr r0, [r0]
00080294  00 68                                            ldr r0, [r0]
00080296  04 90                                            str r0, [sp, #0x10]
00080298  64 d0                                            beq #0x80364
0008029a  53 49                                            ldr r1, [pc, #0x14c]
0008029c  0d f1 0c 09                                      add.w sb, sp, #0xc
000802a0  00 20                                            movs r0, #0
000802a2  79 44                                            add r1, pc
000802a4  09 68                                            ldr r1, [r1]
000802a6  01 91                                            str r1, [sp, #4]
000802a8  bb f1 00 0f                                      cmp.w fp, #0
000802ac  5d d0                                            beq #0x8036a
000802ae  db f8 0c 10                                      ldr.w r1, [fp, #0xc]
000802b2  05 29                                            cmp r1, #5
000802b4  59 d1                                            bne #0x8036a
000802b6  00 26                                            movs r6, #0
000802b8  03 96                                            str r6, [sp, #0xc]
000802ba  bb f8 1c 00                                      ldrh.w r0, [fp, #0x1c]
000802be  10 f4 e0 6f                                      tst.w r0, #0x700
000802c2  2c d0                                            beq #0x8031e
000802c4  00 26                                            movs r6, #0
000802c6  00 25                                            movs r5, #0
000802c8  03 2e                                            cmp r6, #3
000802ca  0f d8                                            bhi #0x802ec
000802cc  df e8 06 f0                                      tbb [pc, r6]
000802d0  02 05                                            lsls r2, r0, #0x14
000802d2  08 0b                                            lsrs r0, r1, #0xc
000802d4  00 f0 03 00                                      and r0, r0, #3
000802d8  09 e0                                            b #0x802ee
000802da  c0 f3 81 00                                      ubfx r0, r0, #2, #2
000802de  06 e0                                            b #0x802ee
000802e0  c0 f3 01 10                                      ubfx r0, r0, #4, #2
000802e4  03 e0                                            b #0x802ee
000802e6  c0 f3 81 10                                      ubfx r0, r0, #6, #2
000802ea  00 e0                                            b #0x802ee
000802ec  00 20                                            movs r0, #0
000802ee  84 b2                                            uxth r4, r0
000802f0  48 46                                            mov r0, sb
000802f2  31 46                                            mov r1, r6
000802f4  22 46                                            mov r2, r4
000802f6  9a f8 1c 80                                      ldrb.w r8, [sl, #0x1c]
000802fa  00 f0 7b f8                                      bl #0x803f4
000802fe  08 f0 0f 01                                      and r1, r8, #0xf
00080302  bb f8 1c 00                                      ldrh.w r0, [fp, #0x1c]
00080306  f1 40                                            lsrs r1, r6
00080308  01 36                                            adds r6, #1
0008030a  01 f0 01 01                                      and r1, r1, #1
0008030e  a1 40                                            lsls r1, r4
00080310  0d 43                                            orrs r5, r1
00080312  c0 f3 02 21                                      ubfx r1, r0, #8, #3
00080316  8e 42                                            cmp r6, r1
00080318  d6 d3                                            blo #0x802c8
0008031a  03 9e                                            ldr r6, [sp, #0xc]
0008031c  00 e0                                            b #0x80320
0008031e  00 25                                            movs r5, #0
00080320  9a f8 1c 00                                      ldrb.w r0, [sl, #0x1c]
00080324  05 f0 0f 01                                      and r1, r5, #0xf
00080328  00 f0 f0 00                                      and r0, r0, #0xf0
0008032c  08 43                                            orrs r0, r1
0008032e  8a f8 1c 00                                      strb.w r0, [sl, #0x1c]
00080332  50 46                                            mov r0, sl
00080334  20 21                                            movs r1, #0x20
00080336  db f8 18 b0                                      ldr.w fp, [fp, #0x18]
0008033a  b2 f7 f2 e9                                      blx #0x32720
0008033e  01 99                                            ldr r1, [sp, #4]
00080340  04 46                                            mov r4, r0
00080342  b2 f7 de ea                                      blx #0x32900
00080346  da f8 14 10                                      ldr.w r1, [sl, #0x14]
0008034a  20 46                                            mov r0, r4
0008034c  32 46                                            mov r2, r6
0008034e  b3 f7 26 ec                                      blx #0x33b9c
00080352  01 20                                            movs r0, #1
00080354  bb f1 00 0f                                      cmp.w fp, #0
00080358  ca f8 14 40                                      str.w r4, [sl, #0x14]
0008035c  a4 d1                                            bne #0x802a8
0008035e  4f f0 00 0b                                      mov.w fp, #0
00080362  04 e0                                            b #0x8036e
00080364  4f f0 00 0b                                      mov.w fp, #0
00080368  2c e0                                            b #0x803c4
0008036a  00 06                                            lsls r0, r0, #0x18
0008036c  2a d0                                            beq #0x803c4
0008036e  0d f1 08 08                                      add.w r8, sp, #8
00080372  00 26                                            movs r6, #0
00080374  01 24                                            movs r4, #1
00080376  4f f0 00 09                                      mov.w sb, #0
0008037a  02 96                                            str r6, [sp, #8]
0008037c  9a f8 1c 00                                      ldrb.w r0, [sl, #0x1c]
00080380  04 fa 06 f1                                      lsl.w r1, r4, r6
00080384  08 40                                            ands r0, r1
00080386  00 07                                            lsls r0, r0, #0x1c
00080388  06 d0                                            beq #0x80398
0008038a  40 46                                            mov r0, r8
0008038c  31 46                                            mov r1, r6
0008038e  4a 46                                            mov r2, sb
00080390  00 f0 30 f8                                      bl #0x803f4
00080394  09 f1 01 09                                      add.w sb, sb, #1
00080398  01 36                                            adds r6, #1
0008039a  04 2e                                            cmp r6, #4
0008039c  ee d1                                            bne #0x8037c
0008039e  50 46                                            mov r0, sl
000803a0  20 21                                            movs r1, #0x20
000803a2  b2 f7 be e9                                      blx #0x32720
000803a6  04 46                                            mov r4, r0
000803a8  10 48                                            ldr r0, [pc, #0x40]
000803aa  78 44                                            add r0, pc
000803ac  01 68                                            ldr r1, [r0]
000803ae  20 46                                            mov r0, r4
000803b0  b2 f7 a6 ea                                      blx #0x32900
000803b4  da f8 14 10                                      ldr.w r1, [sl, #0x14]
000803b8  20 46                                            mov r0, r4
000803ba  02 9a                                            ldr r2, [sp, #8]
000803bc  b3 f7 ee eb                                      blx #0x33b9c
000803c0  ca f8 14 40                                      str.w r4, [sl, #0x14]
000803c4  0a 48                                            ldr r0, [pc, #0x28]
000803c6  ca f8 10 b0                                      str.w fp, [sl, #0x10]
000803ca  78 44                                            add r0, pc
000803cc  04 99                                            ldr r1, [sp, #0x10]
000803ce  00 68                                            ldr r0, [r0]
000803d0  00 68                                            ldr r0, [r0]
000803d2  40 1a                                            subs r0, r0, r1
000803d4  02 bf                                            ittt eq
000803d6  05 b0                                            addeq sp, #0x14
000803d8  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
000803dc  f0 bd                                            popeq {r4, r5, r6, r7, pc}
000803de  b1 f7 40 ee                                      blx #0x32060
000803e2  00 bf                                            nop
000803e4  24 c2                                            stm r2!, {r2, r5}
000803e6  05 00                                            movs r5, r0
000803e8  96 c2                                            stm r2!, {r1, r2, r4, r7}
000803ea  05 00                                            movs r5, r0
000803ec  8e c1                                            stm r1!, {r1, r2, r3, r7}
000803ee  05 00                                            movs r5, r0
000803f0  ea c0                                            stm r0!, {r1, r3, r5, r6, r7}
000803f2  05 00                                            movs r5, r0

; FUNCTION 0x00080458, declared_size=92, range_size=92, mode=thumb
; class-group: ir_assignment
; alias: _ZN13ir_assignment22whole_variable_writtenEv
; demangled: ir_assignment::whole_variable_written()
; decoder-mode: thumb
00080458  d0 b5                                            push {r4, r6, r7, lr}
0008045a  02 af                                            add r7, sp, #8
0008045c  04 46                                            mov r4, r0
0008045e  20 69                                            ldr r0, [r4, #0x10]
00080460  01 68                                            ldr r1, [r0]
00080462  49 6a                                            ldr r1, [r1, #0x24]
00080464  88 47                                            blx r1
00080466  18 b3                                            cbz r0, #0x804b0
00080468  02 69                                            ldr r2, [r0, #0x10]
0008046a  11 89                                            ldrh r1, [r2, #8]
0008046c  01 f4 60 63                                      and r3, r1, #0xe00
00080470  b3 f5 00 7f                                      cmp.w r3, #0x200
00080474  02 d1                                            bne #0x8047c
00080476  53 68                                            ldr r3, [r2, #4]
00080478  04 2b                                            cmp r3, #4
0008047a  18 d3                                            blo #0x804ae
0008047c  01 f4 40 63                                      and r3, r1, #0xc00
00080480  b3 f5 00 7f                                      cmp.w r3, #0x200
00080484  13 d9                                            bls #0x804ae
00080486  01 f4 e0 43                                      and r3, r1, #0x7000
0008048a  b3 f5 80 5f                                      cmp.w r3, #0x1000
0008048e  0e d1                                            bne #0x804ae
00080490  52 68                                            ldr r2, [r2, #4]
00080492  03 2a                                            cmp r2, #3
00080494  88 bf                                            it hi
00080496  d0 bd                                            pophi {r4, r6, r7, pc}
00080498  23 7f                                            ldrb r3, [r4, #0x1c]
0008049a  c1 f3 42 21                                      ubfx r1, r1, #9, #3
0008049e  01 22                                            movs r2, #1
000804a0  02 fa 01 f1                                      lsl.w r1, r2, r1
000804a4  03 f0 0f 02                                      and r2, r3, #0xf
000804a8  01 39                                            subs r1, #1
000804aa  91 42                                            cmp r1, r2
000804ac  00 d1                                            bne #0x804b0
000804ae  d0 bd                                            pop {r4, r6, r7, pc}
000804b0  00 20                                            movs r0, #0
000804b2  d0 bd                                            pop {r4, r6, r7, pc}

; FUNCTION 0x000804b4, declared_size=56, range_size=56, mode=thumb
; class-group: ir_assignment
; alias: _ZN13ir_assignmentC1EP14ir_dereferenceP9ir_rvalueS3_j
; demangled: ir_assignment::ir_assignment(ir_dereference*, ir_rvalue*, ir_rvalue*, unsigned int)
; alias: _ZN13ir_assignmentC2EP14ir_dereferenceP9ir_rvalueS3_j
; demangled: ir_assignment::ir_assignment(ir_dereference*, ir_rvalue*, ir_rvalue*, unsigned int)
; decoder-mode: thumb
000804b4  b0 b5                                            push {r4, r5, r7, lr}
000804b6  02 af                                            add r7, sp, #8
000804b8  df f8 2c c0                                      ldr.w ip, [pc, #0x2c]
000804bc  08 24                                            movs r4, #8
000804be  05 7f                                            ldrb r5, [r0, #0x1c]
000804c0  fc 44                                            add ip, pc
000804c2  97 f8 08 e0                                      ldrb.w lr, [r7, #8]
000804c6  c0 e9 03 41                                      strd r4, r1, [r0, #0xc]
000804ca  c0 e9 05 23                                      strd r2, r3, [r0, #0x14]
000804ce  0e f0 0f 01                                      and r1, lr, #0xf
000804d2  05 f0 f0 02                                      and r2, r5, #0xf0
000804d6  dc f8 00 30                                      ldr.w r3, [ip]
000804da  11 43                                            orrs r1, r2
000804dc  01 77                                            strb r1, [r0, #0x1c]
000804de  03 f1 08 01                                      add.w r1, r3, #8
000804e2  01 60                                            str r1, [r0]
000804e4  b0 bd                                            pop {r4, r5, r7, pc}
000804e6  00 bf                                            nop
000804e8  ac c4                                            stm r4!, {r2, r3, r5, r7}
000804ea  05 00                                            movs r5, r0

; FUNCTION 0x000804ec, declared_size=120, range_size=120, mode=thumb
; class-group: ir_assignment
; alias: _ZN13ir_assignmentC1EP9ir_rvalueS1_S1_
; demangled: ir_assignment::ir_assignment(ir_rvalue*, ir_rvalue*, ir_rvalue*)
; alias: _ZN13ir_assignmentC2EP9ir_rvalueS1_S1_
; demangled: ir_assignment::ir_assignment(ir_rvalue*, ir_rvalue*, ir_rvalue*)
; decoder-mode: thumb
000804ec  d0 b5                                            push {r4, r6, r7, lr}
000804ee  02 af                                            add r7, sp, #8
000804f0  df f8 6c c0                                      ldr.w ip, [pc, #0x6c]
000804f4  04 46                                            mov r4, r0
000804f6  08 20                                            movs r0, #8
000804f8  fc 44                                            add ip, pc
000804fa  e0 60                                            str r0, [r4, #0xc]
000804fc  a3 61                                            str r3, [r4, #0x18]
000804fe  dc f8 00 00                                      ldr.w r0, [ip]
00080502  62 61                                            str r2, [r4, #0x14]
00080504  08 30                                            adds r0, #8
00080506  20 60                                            str r0, [r4]
00080508  10 69                                            ldr r0, [r2, #0x10]
0008050a  02 89                                            ldrh r2, [r0, #8]
0008050c  02 f4 40 63                                      and r3, r2, #0xc00
00080510  b3 f5 00 7f                                      cmp.w r3, #0x200
00080514  10 d9                                            bls #0x80538
00080516  02 f4 e0 43                                      and r3, r2, #0x7000
0008051a  b3 f5 80 5f                                      cmp.w r3, #0x1000
0008051e  0b d1                                            bne #0x80538
00080520  43 68                                            ldr r3, [r0, #4]
00080522  03 2b                                            cmp r3, #3
00080524  08 d8                                            bhi #0x80538
00080526  c2 f3 42 20                                      ubfx r0, r2, #9, #3
0008052a  01 22                                            movs r2, #1
0008052c  02 fa 00 f0                                      lsl.w r0, r2, r0
00080530  0f 30                                            adds r0, #0xf
00080532  00 f0 0f 02                                      and r2, r0, #0xf
00080536  09 e0                                            b #0x8054c
00080538  02 f4 60 63                                      and r3, r2, #0xe00
0008053c  00 22                                            movs r2, #0
0008053e  b3 f5 00 7f                                      cmp.w r3, #0x200
00080542  03 d1                                            bne #0x8054c
00080544  40 68                                            ldr r0, [r0, #4]
00080546  04 28                                            cmp r0, #4
00080548  38 bf                                            it lo
0008054a  01 22                                            movlo r2, #1
0008054c  20 7f                                            ldrb r0, [r4, #0x1c]
0008054e  00 f0 f0 00                                      and r0, r0, #0xf0
00080552  10 43                                            orrs r0, r2
00080554  20 77                                            strb r0, [r4, #0x1c]
00080556  20 46                                            mov r0, r4
00080558  b3 f7 26 eb                                      blx #0x33ba8
0008055c  20 46                                            mov r0, r4
0008055e  d0 bd                                            pop {r4, r6, r7, pc}
00080560  74 c4                                            stm r4!, {r2, r4, r5, r6}
00080562  05 00                                            movs r5, r0

; FUNCTION 0x00083170, declared_size=124, range_size=124, mode=thumb
; class-group: ir_assignment
; alias: _ZNK13ir_assignment5cloneEPvP10hash_table
; demangled: ir_assignment::clone(void*, hash_table*) const
; decoder-mode: thumb
00083170  f0 b5                                            push {r4, r5, r6, r7, lr}
00083172  03 af                                            add r7, sp, #0xc
00083174  2d e9 00 07                                      push.w {r8, sb, sl}
00083178  04 46                                            mov r4, r0
0008317a  91 46                                            mov sb, r2
0008317c  a0 69                                            ldr r0, [r4, #0x18]
0008317e  0e 46                                            mov r6, r1
00083180  30 b1                                            cbz r0, #0x83190
00083182  01 68                                            ldr r1, [r0]
00083184  4a 46                                            mov r2, sb
00083186  0b 69                                            ldr r3, [r1, #0x10]
00083188  31 46                                            mov r1, r6
0008318a  98 47                                            blx r3
0008318c  80 46                                            mov r8, r0
0008318e  01 e0                                            b #0x83194
00083190  4f f0 00 08                                      mov.w r8, #0
00083194  30 46                                            mov r0, r6
00083196  20 21                                            movs r1, #0x20
00083198  af f7 c2 ea                                      blx #0x32720
0008319c  05 46                                            mov r5, r0
0008319e  12 48                                            ldr r0, [pc, #0x48]
000831a0  78 44                                            add r0, pc
000831a2  01 68                                            ldr r1, [r0]
000831a4  28 46                                            mov r0, r5
000831a6  af f7 ac eb                                      blx #0x32900
000831aa  20 69                                            ldr r0, [r4, #0x10]
000831ac  4a 46                                            mov r2, sb
000831ae  01 68                                            ldr r1, [r0]
000831b0  0b 69                                            ldr r3, [r1, #0x10]
000831b2  31 46                                            mov r1, r6
000831b4  98 47                                            blx r3
000831b6  82 46                                            mov sl, r0
000831b8  60 69                                            ldr r0, [r4, #0x14]
000831ba  4a 46                                            mov r2, sb
000831bc  01 68                                            ldr r1, [r0]
000831be  0b 69                                            ldr r3, [r1, #0x10]
000831c0  31 46                                            mov r1, r6
000831c2  98 47                                            blx r3
000831c4  02 46                                            mov r2, r0
000831c6  28 46                                            mov r0, r5
000831c8  51 46                                            mov r1, sl
000831ca  43 46                                            mov r3, r8
000831cc  af f7 1c ec                                      blx #0x32a08
000831d0  28 7f                                            ldrb r0, [r5, #0x1c]
000831d2  21 7f                                            ldrb r1, [r4, #0x1c]
000831d4  00 f0 f0 00                                      and r0, r0, #0xf0
000831d8  01 f0 0f 01                                      and r1, r1, #0xf
000831dc  08 43                                            orrs r0, r1
000831de  28 77                                            strb r0, [r5, #0x1c]
000831e0  28 46                                            mov r0, r5
000831e2  bd e8 00 07                                      pop.w {r8, sb, sl}
000831e6  f0 bd                                            pop {r4, r5, r6, r7, pc}
000831e8  98 93                                            str r3, [sp, #0x260]
000831ea  05 00                                            movs r5, r0

; FUNCTION 0x000837f8, declared_size=22, range_size=22, mode=thumb
; class-group: ir_assignment
; alias: _ZN13ir_assignmentD0Ev
; demangled: ir_assignment::~ir_assignment()
; decoder-mode: thumb
000837f8  d0 b5                                            push {r4, r6, r7, lr}
000837fa  02 af                                            add r7, sp, #8
000837fc  00 21                                            movs r1, #0
000837fe  04 46                                            mov r4, r0
00083800  af f7 7e e8                                      blx #0x32900
00083804  20 46                                            mov r0, r4
00083806  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0008380a  2d f0 2d b9                                      b.w #0xb0a68

; FUNCTION 0x0008380e, declared_size=12, range_size=12, mode=thumb
; class-group: ir_assignment
; alias: _ZN13ir_assignment6acceptEP10ir_visitor
; demangled: ir_assignment::accept(ir_visitor*)
; decoder-mode: thumb
0008380e  02 46                                            mov r2, r0
00083810  08 68                                            ldr r0, [r1]
00083812  03 6b                                            ldr r3, [r0, #0x30]
00083814  08 46                                            mov r0, r1
00083816  11 46                                            mov r1, r2
00083818  18 47                                            bx r3

; FUNCTION 0x00085f24, declared_size=4, range_size=4, mode=thumb
; class-group: ir_assignment
; alias: _ZN13ir_assignment25constant_expression_valueEP10hash_table
; demangled: ir_assignment::constant_expression_value(hash_table*)
; decoder-mode: thumb
00085f24  00 20                                            movs r0, #0
00085f26  70 47                                            bx lr

; FUNCTION 0x000876da, declared_size=96, range_size=96, mode=thumb
; class-group: ir_assignment
; alias: _ZN13ir_assignment6acceptEP23ir_hierarchical_visitor
; demangled: ir_assignment::accept(ir_hierarchical_visitor*)
; decoder-mode: thumb
000876da  b0 b5                                            push {r4, r5, r7, lr}
000876dc  02 af                                            add r7, sp, #8
000876de  0d 46                                            mov r5, r1
000876e0  04 46                                            mov r4, r0
000876e2  28 68                                            ldr r0, [r5]
000876e4  21 46                                            mov r1, r4
000876e6  c2 6d                                            ldr r2, [r0, #0x5c]
000876e8  28 46                                            mov r0, r5
000876ea  90 47                                            blx r2
000876ec  80 b9                                            cbnz r0, #0x87710
000876ee  01 20                                            movs r0, #1
000876f0  28 76                                            strb r0, [r5, #0x18]
000876f2  20 69                                            ldr r0, [r4, #0x10]
000876f4  01 68                                            ldr r1, [r0]
000876f6  ca 68                                            ldr r2, [r1, #0xc]
000876f8  29 46                                            mov r1, r5
000876fa  90 47                                            blx r2
000876fc  00 21                                            movs r1, #0
000876fe  00 28                                            cmp r0, #0
00087700  29 76                                            strb r1, [r5, #0x18]
00087702  05 d1                                            bne #0x87710
00087704  60 69                                            ldr r0, [r4, #0x14]
00087706  01 68                                            ldr r1, [r0]
00087708  ca 68                                            ldr r2, [r1, #0xc]
0008770a  29 46                                            mov r1, r5
0008770c  90 47                                            blx r2
0008770e  18 b1                                            cbz r0, #0x87718
00087710  01 28                                            cmp r0, #1
00087712  08 bf                                            it eq
00087714  00 20                                            moveq r0, #0
00087716  b0 bd                                            pop {r4, r5, r7, pc}
00087718  a0 69                                            ldr r0, [r4, #0x18]
0008771a  38 b1                                            cbz r0, #0x8772c
0008771c  01 68                                            ldr r1, [r0]
0008771e  ca 68                                            ldr r2, [r1, #0xc]
00087720  29 46                                            mov r1, r5
00087722  90 47                                            blx r2
00087724  02 28                                            cmp r0, #2
00087726  04 bf                                            itt eq
00087728  02 20                                            moveq r0, #2
0008772a  b0 bd                                            popeq {r4, r5, r7, pc}
0008772c  28 68                                            ldr r0, [r5]
0008772e  21 46                                            mov r1, r4
00087730  02 6e                                            ldr r2, [r0, #0x60]
00087732  28 46                                            mov r0, r5
00087734  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
00087738  10 47                                            bx r2
