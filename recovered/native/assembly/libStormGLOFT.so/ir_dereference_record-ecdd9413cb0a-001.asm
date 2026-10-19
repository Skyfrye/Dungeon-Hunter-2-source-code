; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000817e8, declared_size=100, range_size=100, mode=thumb
; class-group: ir_dereference_record
; alias: _ZN21ir_dereference_recordC1EP9ir_rvaluePKc
; demangled: ir_dereference_record::ir_dereference_record(ir_rvalue*, char const*)
; alias: _ZN21ir_dereference_recordC2EP9ir_rvaluePKc
; demangled: ir_dereference_record::ir_dereference_record(ir_rvalue*, char const*)
; decoder-mode: thumb
000817e8  f0 b5                                            push {r4, r5, r6, r7, lr}
000817ea  03 af                                            add r7, sp, #0xc
000817ec  4d f8 04 bd                                      str fp, [sp, #-0x4]!
000817f0  0e 46                                            mov r6, r1
000817f2  04 46                                            mov r4, r0
000817f4  30 46                                            mov r0, r6
000817f6  15 46                                            mov r5, r2
000817f8  b1 f7 56 ea                                      blx #0x32ca8
000817fc  12 4a                                            ldr r2, [pc, #0x48]
000817fe  01 23                                            movs r3, #1
00081800  10 49                                            ldr r1, [pc, #0x40]
00081802  7a 44                                            add r2, pc
00081804  79 44                                            add r1, pc
00081806  12 68                                            ldr r2, [r2]
00081808  09 68                                            ldr r1, [r1]
0008180a  12 68                                            ldr r2, [r2]
0008180c  08 31                                            adds r1, #8
0008180e  21 60                                            str r1, [r4]
00081810  29 46                                            mov r1, r5
00081812  c4 e9 03 32                                      strd r3, r2, [r4, #0xc]
00081816  c4 e9 05 06                                      strd r0, r6, [r4, #0x14]
0008181a  20 46                                            mov r0, r4
0008181c  b0 f7 1a ef                                      blx #0x32654
00081820  a1 69                                            ldr r1, [r4, #0x18]
00081822  e0 61                                            str r0, [r4, #0x1c]
00081824  08 69                                            ldr r0, [r1, #0x10]
00081826  29 46                                            mov r1, r5
00081828  b2 f7 dc e9                                      blx #0x33be4
0008182c  a1 69                                            ldr r1, [r4, #0x18]
0008182e  20 61                                            str r0, [r4, #0x10]
00081830  21 b1                                            cbz r1, #0x8183c
00081832  08 69                                            ldr r0, [r1, #0x10]
00081834  29 46                                            mov r1, r5
00081836  b2 f7 dc e9                                      blx #0x33bf0
0008183a  60 61                                            str r0, [r4, #0x14]
0008183c  20 46                                            mov r0, r4
0008183e  5d f8 04 bb                                      ldr fp, [sp], #4
00081842  f0 bd                                            pop {r4, r5, r6, r7, pc}
00081844  80 b1                                            cbz r0, #0x81868
00081846  05 00                                            movs r5, r0
00081848  3a ad                                            add r5, sp, #0xe8
0008184a  05 00                                            movs r5, r0

; FUNCTION 0x0008184c, declared_size=164, range_size=164, mode=thumb
; class-group: ir_dereference_record
; alias: _ZN21ir_dereference_recordC1EP11ir_variablePKc
; demangled: ir_dereference_record::ir_dereference_record(ir_variable*, char const*)
; alias: _ZN21ir_dereference_recordC2EP11ir_variablePKc
; demangled: ir_dereference_record::ir_dereference_record(ir_variable*, char const*)
; decoder-mode: thumb
0008184c  f0 b5                                            push {r4, r5, r6, r7, lr}
0008184e  03 af                                            add r7, sp, #0xc
00081850  4d f8 04 8d                                      str r8, [sp, #-0x4]!
00081854  0e 46                                            mov r6, r1
00081856  04 46                                            mov r4, r0
00081858  30 46                                            mov r0, r6
0008185a  90 46                                            mov r8, r2
0008185c  b1 f7 24 ea                                      blx #0x32ca8
00081860  20 4a                                            ldr r2, [pc, #0x80]
00081862  01 23                                            movs r3, #1
00081864  1e 49                                            ldr r1, [pc, #0x78]
00081866  7a 44                                            add r2, pc
00081868  79 44                                            add r1, pc
0008186a  12 68                                            ldr r2, [r2]
0008186c  09 68                                            ldr r1, [r1]
0008186e  12 68                                            ldr r2, [r2]
00081870  08 31                                            adds r1, #8
00081872  21 60                                            str r1, [r4]
00081874  c4 e9 03 32                                      strd r3, r2, [r4, #0xc]
00081878  60 61                                            str r0, [r4, #0x14]
0008187a  30 46                                            mov r0, r6
0008187c  b1 f7 54 e9                                      blx #0x32b28
00081880  1c 21                                            movs r1, #0x1c
00081882  b0 f7 4e ef                                      blx #0x32720
00081886  05 46                                            mov r5, r0
00081888  17 48                                            ldr r0, [pc, #0x5c]
0008188a  78 44                                            add r0, pc
0008188c  01 68                                            ldr r1, [r0]
0008188e  28 46                                            mov r0, r5
00081890  b1 f7 36 e8                                      blx #0x32900
00081894  30 46                                            mov r0, r6
00081896  b1 f7 08 ea                                      blx #0x32ca8
0008189a  14 49                                            ldr r1, [pc, #0x50]
0008189c  02 22                                            movs r2, #2
0008189e  ea 60                                            str r2, [r5, #0xc]
000818a0  79 44                                            add r1, pc
000818a2  68 61                                            str r0, [r5, #0x14]
000818a4  09 68                                            ldr r1, [r1]
000818a6  01 f1 08 00                                      add.w r0, r1, #8
000818aa  28 60                                            str r0, [r5]
000818ac  ae 61                                            str r6, [r5, #0x18]
000818ae  41 46                                            mov r1, r8
000818b0  30 69                                            ldr r0, [r6, #0x10]
000818b2  28 61                                            str r0, [r5, #0x10]
000818b4  20 46                                            mov r0, r4
000818b6  a5 61                                            str r5, [r4, #0x18]
000818b8  b0 f7 cc ee                                      blx #0x32654
000818bc  a1 69                                            ldr r1, [r4, #0x18]
000818be  e0 61                                            str r0, [r4, #0x1c]
000818c0  08 69                                            ldr r0, [r1, #0x10]
000818c2  41 46                                            mov r1, r8
000818c4  b2 f7 8e e9                                      blx #0x33be4
000818c8  a1 69                                            ldr r1, [r4, #0x18]
000818ca  20 61                                            str r0, [r4, #0x10]
000818cc  21 b1                                            cbz r1, #0x818d8
000818ce  08 69                                            ldr r0, [r1, #0x10]
000818d0  41 46                                            mov r1, r8
000818d2  b2 f7 8e e9                                      blx #0x33bf0
000818d6  60 61                                            str r0, [r4, #0x14]
000818d8  20 46                                            mov r0, r4
000818da  5d f8 04 8b                                      ldr r8, [sp], #4
000818de  f0 bd                                            pop {r4, r5, r6, r7, pc}
000818e0  1c b1                                            cbz r4, #0x818ea
000818e2  05 00                                            movs r5, r0
000818e4  d6 ac                                            add r4, sp, #0x358
000818e6  05 00                                            movs r5, r0
000818e8  ae ac                                            add r4, sp, #0x2b8
000818ea  05 00                                            movs r5, r0
000818ec  dc b0                                            sub sp, #0x170
000818ee  05 00                                            movs r5, r0

; FUNCTION 0x0008305c, declared_size=72, range_size=72, mode=thumb
; class-group: ir_dereference_record
; alias: _ZNK21ir_dereference_record5cloneEPvP10hash_table
; demangled: ir_dereference_record::clone(void*, hash_table*) const
; decoder-mode: thumb
0008305c  f0 b5                                            push {r4, r5, r6, r7, lr}
0008305e  03 af                                            add r7, sp, #0xc
00083060  4d f8 04 8d                                      str r8, [sp, #-0x4]!
00083064  0d 46                                            mov r5, r1
00083066  06 46                                            mov r6, r0
00083068  28 46                                            mov r0, r5
0008306a  20 21                                            movs r1, #0x20
0008306c  90 46                                            mov r8, r2
0008306e  af f7 58 eb                                      blx #0x32720
00083072  04 46                                            mov r4, r0
00083074  0a 48                                            ldr r0, [pc, #0x28]
00083076  78 44                                            add r0, pc
00083078  01 68                                            ldr r1, [r0]
0008307a  20 46                                            mov r0, r4
0008307c  af f7 40 ec                                      blx #0x32900
00083080  b0 69                                            ldr r0, [r6, #0x18]
00083082  42 46                                            mov r2, r8
00083084  01 68                                            ldr r1, [r0]
00083086  0b 69                                            ldr r3, [r1, #0x10]
00083088  29 46                                            mov r1, r5
0008308a  98 47                                            blx r3
0008308c  01 46                                            mov r1, r0
0008308e  f2 69                                            ldr r2, [r6, #0x1c]
00083090  20 46                                            mov r0, r4
00083092  5d f8 04 8b                                      ldr r8, [sp], #4
00083096  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008309a  2d f0 45 be                                      b.w #0xb0d28
0008309e  00 bf                                            nop
000830a0  c2 94                                            str r4, [sp, #0x308]
000830a2  05 00                                            movs r5, r0

; FUNCTION 0x000837ce, declared_size=22, range_size=22, mode=thumb
; class-group: ir_dereference_record
; alias: _ZN21ir_dereference_recordD0Ev
; demangled: ir_dereference_record::~ir_dereference_record()
; decoder-mode: thumb
000837ce  d0 b5                                            push {r4, r6, r7, lr}
000837d0  02 af                                            add r7, sp, #8
000837d2  00 21                                            movs r1, #0
000837d4  04 46                                            mov r4, r0
000837d6  af f7 94 e8                                      blx #0x32900
000837da  20 46                                            mov r0, r4
000837dc  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
000837e0  2d f0 42 b9                                      b.w #0xb0a68

; FUNCTION 0x000837e4, declared_size=12, range_size=12, mode=thumb
; class-group: ir_dereference_record
; alias: _ZN21ir_dereference_record6acceptEP10ir_visitor
; demangled: ir_dereference_record::accept(ir_visitor*)
; decoder-mode: thumb
000837e4  02 46                                            mov r2, r0
000837e6  08 68                                            ldr r0, [r1]
000837e8  c3 6a                                            ldr r3, [r0, #0x2c]
000837ea  08 46                                            mov r0, r1
000837ec  11 46                                            mov r1, r2
000837ee  18 47                                            bx r3

; FUNCTION 0x000837f0, declared_size=8, range_size=8, mode=thumb
; class-group: ir_dereference_record
; alias: _ZNK21ir_dereference_record19variable_referencedEv
; demangled: ir_dereference_record::variable_referenced() const
; decoder-mode: thumb
000837f0  80 69                                            ldr r0, [r0, #0x18]
000837f2  01 68                                            ldr r1, [r0]
000837f4  09 6a                                            ldr r1, [r1, #0x20]
000837f6  08 47                                            bx r1

; FUNCTION 0x00085f04, declared_size=32, range_size=32, mode=thumb
; class-group: ir_dereference_record
; alias: _ZN21ir_dereference_record25constant_expression_valueEP10hash_table
; demangled: ir_dereference_record::constant_expression_value(hash_table*)
; decoder-mode: thumb
00085f04  d0 b5                                            push {r4, r6, r7, lr}
00085f06  02 af                                            add r7, sp, #8
00085f08  04 46                                            mov r4, r0
00085f0a  a0 69                                            ldr r0, [r4, #0x18]
00085f0c  01 68                                            ldr r1, [r0]
00085f0e  8a 69                                            ldr r2, [r1, #0x18]
00085f10  00 21                                            movs r1, #0
00085f12  90 47                                            blx r2
00085f14  20 b1                                            cbz r0, #0x85f20
00085f16  e1 69                                            ldr r1, [r4, #0x1c]
00085f18  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
00085f1c  2a f0 0c bf                                      b.w #0xb0d38
00085f20  00 20                                            movs r0, #0
00085f22  d0 bd                                            pop {r4, r6, r7, pc}

; FUNCTION 0x0008769e, declared_size=60, range_size=60, mode=thumb
; class-group: ir_dereference_record
; alias: _ZN21ir_dereference_record6acceptEP23ir_hierarchical_visitor
; demangled: ir_dereference_record::accept(ir_hierarchical_visitor*)
; decoder-mode: thumb
0008769e  b0 b5                                            push {r4, r5, r7, lr}
000876a0  02 af                                            add r7, sp, #8
000876a2  0d 46                                            mov r5, r1
000876a4  04 46                                            mov r4, r0
000876a6  28 68                                            ldr r0, [r5]
000876a8  21 46                                            mov r1, r4
000876aa  42 6d                                            ldr r2, [r0, #0x54]
000876ac  28 46                                            mov r0, r5
000876ae  90 47                                            blx r2
000876b0  18 b1                                            cbz r0, #0x876ba
000876b2  01 28                                            cmp r0, #1
000876b4  08 bf                                            it eq
000876b6  00 20                                            moveq r0, #0
000876b8  b0 bd                                            pop {r4, r5, r7, pc}
000876ba  a0 69                                            ldr r0, [r4, #0x18]
000876bc  01 68                                            ldr r1, [r0]
000876be  ca 68                                            ldr r2, [r1, #0xc]
000876c0  29 46                                            mov r1, r5
000876c2  90 47                                            blx r2
000876c4  02 28                                            cmp r0, #2
000876c6  04 bf                                            itt eq
000876c8  02 20                                            moveq r0, #2
000876ca  b0 bd                                            popeq {r4, r5, r7, pc}
000876cc  28 68                                            ldr r0, [r5]
000876ce  21 46                                            mov r1, r4
000876d0  82 6d                                            ldr r2, [r0, #0x58]
000876d2  28 46                                            mov r0, r5
000876d4  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
000876d8  10 47                                            bx r2
